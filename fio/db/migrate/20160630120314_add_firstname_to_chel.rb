class AddFirstnameToChel < ActiveRecord::Migration
  def change
    add_column :chels, :firstname, :string
  end
end
