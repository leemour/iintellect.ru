class ChelsController < ApplicationController
  def index
    @chels = Chel.all
    @chel  = Chel.new
  end

  def create
    @chel = Chel.create!(chel_params)


    if (!@chel.fullname.blank? && (countwords(@chel.fullname) > 1))
        if (@chel.firstname.blank?)
          @chel.firstname = chelfirstname(@chel.fullname)
        end

      if (@chel.secondname.blank? && (countwords(@chel.fullname) > 2))
        @chel.secondname = chelsecondname(@chel.fullname)
      end

      if (@chel.lastname.blank?)
        @chel.lastname = chellastname(@chel.fullname)
      end
    else
      @chel.fullname = chelfullname(@chel.firstname, @chel.secondname, @chel.lastname)
    end

    if (countwords(@chel.fullname) > 1)
      if (@chel.save)
        flash[:notice] = "Chel successfully created"    
      end
    else
      @chel.destroy
    end
  end
 
  private
    def chel_params
      params.require(:chel).permit(:fullname, :firstname, :secondname, :lastname)
    end

end
