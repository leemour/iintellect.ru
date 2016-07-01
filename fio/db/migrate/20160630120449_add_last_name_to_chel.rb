class AddLastNameToChel < ActiveRecord::Migration
  def change
    add_column :chels, :lastname, :string
  end
end
