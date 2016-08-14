class CatalogoUsuariosController < ApplicationController
  before_action :set_catalogo_usuario, only: [:show, :edit, :update, :destroy]

  # GET /catalogo_usuarios
  # GET /catalogo_usuarios.json
  def index
    @catalogo_usuarios = CatalogoUsuario.all
  end

  # GET /catalogo_usuarios/1
  # GET /catalogo_usuarios/1.json
  def show
  end

  # GET /catalogo_usuarios/new
  def new
    @catalogo_usuario = CatalogoUsuario.new
  end

  # GET /catalogo_usuarios/1/edit
  def edit
  end

  # POST /catalogo_usuarios
  # POST /catalogo_usuarios.json
  def create
    @catalogo_usuario = CatalogoUsuario.new(catalogo_usuario_params)

    respond_to do |format|
      if @catalogo_usuario.save
        format.html { redirect_to @catalogo_usuario, notice: 'Catalogo usuario was successfully created.' }
        format.json { render :show, status: :created, location: @catalogo_usuario }
      else
        format.html { render :new }
        format.json { render json: @catalogo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /catalogo_usuarios/1
  # PATCH/PUT /catalogo_usuarios/1.json
  def update
    respond_to do |format|
      if @catalogo_usuario.update(catalogo_usuario_params)
        format.html { redirect_to @catalogo_usuario, notice: 'Catalogo usuario was successfully updated.' }
        format.json { render :show, status: :ok, location: @catalogo_usuario }
      else
        format.html { render :edit }
        format.json { render json: @catalogo_usuario.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /catalogo_usuarios/1
  # DELETE /catalogo_usuarios/1.json
  def destroy
    @catalogo_usuario.destroy
    respond_to do |format|
      format.html { redirect_to catalogo_usuarios_url, notice: 'Catalogo usuario was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_catalogo_usuario
      @catalogo_usuario = CatalogoUsuario.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def catalogo_usuario_params
      params.require(:catalogo_usuario).permit(:tipo)
    end
end
