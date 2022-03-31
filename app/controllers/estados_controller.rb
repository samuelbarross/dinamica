class EstadosController < ApplicationController
  before_action :set_estado, only: [:show, :edit, :update, :destroy]

  # GET /estados
  def index
    # @search = Estado.search(params[:q])
    # @estados = @search.result
    @estados = Estado.all
  end

  # GET /estados/1
  def show
  end

  # GET /estados/new
  def new
    @estado = Estado.new
  end

  # GET /estados/1/edit
  def edit
  end

  # POST /estados
  def create
    @estado = Estado.new(estado_params)

    if @estado.save
      redirect_to @estado, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /estados/1
  def update
    if @estado.update(estado_params)
      redirect_to @estado, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /estados/1
  def destroy
    @estado.destroy
    redirect_to estados_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estado
      @estado = Estado.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def estado_params
      params.require(:estado).permit(:nome, :sigla, :codigo_ibge)
    end
end
