class CreateContactos < ActiveRecord::Migration
  def change
    create_table :contactos do |t|
      t.string :nombre
      t.string :apellido
      t.string :cedula
      t.string :celular
      t.string :telefono
      t.string :mesa
      t.string :paraje
      t.string :email
      t.integer :edad
      t.string :sexo
      t.date :fecha_ultimo_contacto
      t.boolean :intesion
      t.references :enc_contacto, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
