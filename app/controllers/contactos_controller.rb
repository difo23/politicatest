class ContactosController < ApplicationController
    http_basic_authenticate_with name: "difo", password: "difo", only: :destroy
 def index

  end



  def edit
      @contacto = Contacto.find(params[:id])
      @enc_contacto = EncContacto.find(params[:enc_contacto_id])
  end


    def update
        @contacto = Contacto.find(params[:id])
        @enc_contacto = EncContacto.find(params[:enc_contacto_id])
        respond_to do |format|
          if @contacto.update(contacto_params)
              format.html { redirect_to @enc_contacto, notice: 'Contacto was successfully updated.' }
              format.json { render :show, status: :ok, location: @enc_contacto }
          else
            format.html { render :edit }
              format.json { render json: @enc_contacto.errors, status: :unprocessable_entity }
          end
        end
      end



    def create
        @enc_contacto = EncContacto.find(params[:enc_contacto_id])
        @contacto = @enc_contacto.contactos.create(contacto_params)
        redirect_to enc_contacto_path(@enc_contacto)
  end

    def destroy

    @contacto = Contacto.find(params[:id])
    @enc_contacto = EncContacto.find(params[:enc_contacto_id])
    @contacto.destroy
    respond_to do |format|
        format.html { redirect_to enc_contacto_path(@enc_contacto), notice: 'Contacto was successfully destroyed.' }
      format.json { head :no_content }
    end
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
