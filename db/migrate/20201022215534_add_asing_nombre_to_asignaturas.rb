class AddAsingNombreToAsignaturas < ActiveRecord::Migration[6.0]
  def change
    #add_column :asignaturas, :ASIGN_ID, :primary_key
    rename_column :asignaturas, :id, :ASIGN_ID
    add_column :asignaturas, :FAREAS_ID, :integer
    add_column :asignaturas, :ASIGN_NOMBRE, :string
    add_column :asignaturas, :ASIGN_CODIGO, :string
    add_column :asignaturas, :ASIGN_HS_SEM, :integer
    add_column :asignaturas, :ASIGN_SENTIDO, :text
    add_reference :asignaturas, :FormaArea, foreing_key:true 
  end
end