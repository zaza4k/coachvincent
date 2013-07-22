class CreateProgrammes < ActiveRecord::Migration
  def change
    create_table :programmes do |t|
      t.string :Title
      t.text :Intro
      t.text :Contenu
      t.decimal :Series
      t.decimal :Repetitions
      t.time :Repos
      t.text :Outro

      t.timestamps
    end
  end
end
