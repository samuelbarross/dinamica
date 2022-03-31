class CoordenacaoPedagogicasController < ApplicationController
  before_action :set_coordenacao_pedagogica, only: [:show, :edit, :update, :destroy]

  # GET /coordenacao_pedagogicas
  def index
    # @search = CoordenacaoPedagogica.search(params[:q])
    # @coordenacao_pedagogicas = @search.result
    @coordenacao_pedagogicas = CoordenacaoPedagogica.all
  end

  # GET /coordenacao_pedagogicas/1
  def show
  end

  # GET /coordenacao_pedagogicas/new
  def new
    @coordenacao_pedagogica = CoordenacaoPedagogica.new
  end

  # GET /coordenacao_pedagogicas/1/edit
  def edit
  end

  # POST /coordenacao_pedagogicas
  def create
    @coordenacao_pedagogica = CoordenacaoPedagogica.new(coordenacao_pedagogica_params)

    if @coordenacao_pedagogica.save
      redirect_to @coordenacao_pedagogica, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /coordenacao_pedagogicas/1
  def update
    if @coordenacao_pedagogica.update(coordenacao_pedagogica_params)
      redirect_to @coordenacao_pedagogica, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /coordenacao_pedagogicas/1
  def destroy
    @coordenacao_pedagogica.destroy
    redirect_to coordenacao_pedagogicas_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_coordenacao_pedagogica
      @coordenacao_pedagogica = CoordenacaoPedagogica.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def coordenacao_pedagogica_params
      params.require(:coordenacao_pedagogica).permit(:prefeitura_id, :user_id, :ano_letivo_id, :contrato_id)
    end
end
