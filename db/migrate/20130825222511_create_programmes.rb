class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :title, :null => false
      t.text :intro
      t.text :outro

      t.timestamps
    end
  end
end
