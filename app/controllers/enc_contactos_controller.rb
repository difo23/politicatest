class EncContactosController < ApplicationController
  before_action :set_enc_contacto, only: [:show, :edit, :update, :destroy]

  # GET /enc_contactos
  # GET /enc_contactos.json
  def index
    @enc_contactos = EncContacto.all
  end

  # GET /enc_contactos/1
  # GET /enc_contactos/1.json
  def show
  end

  # GET /enc_contactos/new
  def new
    @enc_contacto = EncContacto.new
  end

  # GET /enc_contactos/1/edit
  def edit
  end

  # POST /enc_contactos
  # POST /enc_contactos.json
  def create
    @enc_contacto = EncContacto.new(enc_contacto_params)

    respond_to do |format|
      if @enc_contacto.save
        format.html { redirect_to @enc_contacto, notice: 'Enc contacto was successfully created.' }
        format.json { render :show, status: :created, location: @enc_contacto }
      else
        format.html { render :new }
        format.json { render json: @enc_contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /enc_contactos/1
  # PATCH/PUT /enc_contactos/1.json
  def update
    respond_to do |format|
      if @enc_contacto.update(enc_contacto_params)
        format.html { redirect_to @enc_contacto, notice: 'Enc contacto was successfully updated.' }
        format.json { render :show, status: :ok, location: @enc_contacto }
      else
        format.html { render :edit }
        format.json { render json: @enc_contacto.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /enc_contactos/1
  # DELETE /enc_contactos/1.json
  def destroy
    @enc_contacto.destroy
    respond_to do |format|
      format.html { redirect_to enc_contactos_url, notice: 'Enc contacto was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_enc_contacto
      @enc_contacto = EncContacto.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def enc_contacto_params
      params.require(:enc_contacto).permit(:nombre, :apellido, :cedula, :celular, :telefono, :mesa, :paraje)
    end
end
