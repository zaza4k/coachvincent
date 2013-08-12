class AddFotoToExercices < ActiveRecord::Migration
  def change
    add_column :exercices, :foto, :string
  end
end
