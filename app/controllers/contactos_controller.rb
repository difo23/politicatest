class ContactosController < ApplicationController

    def create
        @enc_contacto = EncContacto.find(params[:enc_contacto_id])
        @contacto = @enc_contacto.contactos.create(contacto_params)
        redirect_to enc_contacto_path(@enc_contacto)
  end

  private
    def contacto_params
      params.require(:contacto).permit(
      :nombre,
      :apellido,
      :cedula,
      :celular,
      :telefono,
      :mesa,
      :paraje,
      :email,
      :edad,
      :sexo,
      :fecha_ultimo_contacto,
      :intesion
          )
    end
end
