class AddEliminadoToTemas < ActiveRecord::Migration[6.0]
  def change
    add_column :temas, :eliminado, :integer
  end
end
