class AddSecondNameToChel < ActiveRecord::Migration
  def change
    add_column :chels, :secondname, :string
  end
end
