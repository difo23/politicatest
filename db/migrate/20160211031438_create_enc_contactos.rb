class CreateEncContactos < ActiveRecord::Migration
  def change
    create_table :enc_contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.string :celular
      t.string :telefono
      t.string :mesa
      t.string :paraje

      t.timestamps null: false
    end
  end
end
