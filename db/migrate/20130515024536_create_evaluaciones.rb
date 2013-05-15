class CreateEvaluaciones < ActiveRecord::Migration
  def change
    create_table :evaluaciones do |t|
      t.references :empleado
      t.references :servicio
      t.string :observacion

      t.timestamps
    end
    add_index :evaluaciones, :empleado_id
    add_index :evaluaciones, :servicio_id
  end
end
