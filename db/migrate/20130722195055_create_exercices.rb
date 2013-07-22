class CreateExercices < ActiveRecord::Migration
  def change
    create_table :exercices do |t|
      t.string :title
      t.text :description
      t.text :muscles
      t.text :conseils

      t.timestamps
    end
  end
end
