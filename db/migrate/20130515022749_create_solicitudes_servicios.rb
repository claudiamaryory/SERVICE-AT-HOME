class CreateSolicitudesServicios < ActiveRecord::Migration
  def change
    create_table :solicitudes_servicios do |t|
      t.references :cliente

      t.timestamps
    end
    add_index :solicitudes_servicios, :cliente_id
  end
end
