class CreateChels < ActiveRecord::Migration
  def change
    create_table :chels do |t|
      t.string :fullname

      t.timestamps null: false
    end
  end
end
