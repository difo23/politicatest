json.array!(@enc_contactos) do |enc_contacto|
  json.extract! enc_contacto, :id, :nombre, :apellido, :cedula, :celular, :telefono, :mesa, :paraje
  json.url enc_contacto_url(enc_contacto, format: :json)
end
