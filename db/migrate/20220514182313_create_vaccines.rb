class CreateVaccines < ActiveRecord::Migration[5.2]
  def change
    create_table :vaccines do |t|
      t.string :nombre
      t.string :lote
      t.string :fecha_vencimiento
      t.string :stock

      t.timestamps
    end
  end
end
