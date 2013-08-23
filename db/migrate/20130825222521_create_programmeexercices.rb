class CreateProgrammeexercices < ActiveRecord::Migration
  def change
    create_table :programmeexercices do |t|
      t.integer :programme_id, :null => false
      t.integer :exercice_id, :null => false

      t.timestamps
    end
  end
end
