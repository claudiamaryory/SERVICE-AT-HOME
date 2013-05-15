class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.date :fecha
      t.time :hora
      t.references :calificacion_servicio
      t.references :solicitud_servicio
      t.references :cliente
      t.references :reprogramacion

      t.timestamps
    end
    add_index :servicios, :calificacion_servicio_id
    add_index :servicios, :solicitud_servicio_id
    add_index :servicios, :cliente_id
    add_index :servicios, :reprogramacion_id
  end
end
