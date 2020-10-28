class CreateAsignaturas < ActiveRecord::Migration[6.0]
  def change
    create_table :asignaturas do |t|

      t.timestamps
    end
  end
end