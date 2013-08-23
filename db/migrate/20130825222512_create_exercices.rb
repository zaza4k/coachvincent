class CreateExercices < ActiveRecord::Migration
  def change
    create_table :exercices do |t|
      t.string :title, :null => false
      t.text :description
      t.string :muscles
      t.text :conseils
      t.string :series
      t.string :repetitions
      t.string :repos

      t.timestamps
    end
  end
end
