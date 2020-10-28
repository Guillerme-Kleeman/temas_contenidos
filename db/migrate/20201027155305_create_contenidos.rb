class CreateContenidos < ActiveRecord::Migration[6.0]
  def change
    create_table :contenidos do |t|
      t.text :descripcion
      t.integer :tema_id

      t.timestamps
    end
    add_foreign_key :contenidos, :temas
  end
end
