class AddAsignaturaIdToTemas < ActiveRecord::Migration[6.0]
  def change
    add_column :temas, :asignatura_id, :integer
  end
end
