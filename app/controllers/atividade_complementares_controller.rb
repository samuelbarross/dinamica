class AtividadeComplementaresController < ApplicationController
  before_action :set_atividade_complementar, only: [:show, :edit, :update, :destroy]

  # GET /atividade_complementares
  def index
    # @search = AtividadeComplementar.search(params[:q])
    # @atividade_complementares = @search.result
    @atividade_complementares = AtividadeComplementar.all
  end

  # GET /atividade_complementares/1
  def show
  end

  # GET /atividade_complementares/new
  def new
    @atividade_complementar = AtividadeComplementar.new
  end

  # GET /atividade_complementares/1/edit
  def edit
  end

  # POST /atividade_complementares
  def create
    @atividade_complementar = AtividadeComplementar.new(atividade_complementar_params)

    if @atividade_complementar.save
      redirect_to @atividade_complementar, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /atividade_complementares/1
  def update
    if @atividade_complementar.update(atividade_complementar_params)
      redirect_to @atividade_complementar, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /atividade_complementares/1
  def destroy
    @atividade_complementar.destroy
    redirect_to atividade_complementares_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_atividade_complementar
      @atividade_complementar = AtividadeComplementar.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def atividade_complementar_params
      params.require(:atividade_complementar).permit(:nome, :capitulo_id, :descricao, :url, :tipo)
    end
end
