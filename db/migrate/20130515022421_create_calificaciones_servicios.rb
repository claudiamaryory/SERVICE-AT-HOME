class CreateCalificacionesServicios < ActiveRecord::Migration
  def change
    create_table :calificaciones_servicios do |t|
      t.references :cliente
      t.string :observacion

      t.timestamps
    end
    add_index :calificaciones_servicios, :cliente_id
  end
end
