class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end

# Get firstname
def chelfirstname(fullname)
  fullname.split.first
end

#Get secondname
def chelsecondname(fullname)
  secondname = fullname.split(' ')[1..-1].join(' ')
  secondname = secondname[0...secondname.rindex(' ')]
end

#Get lastname
def chellastname(fullname)
  fullname.split.last
end

#Get fullname
def chelfullname(fistname, secondname, lastname)
  return fistname+ ' ' +secondname+ ' ' +lastname
end

# Count words
def countwords(fullname) 
    fullname.split(' ').length
end
