class FormacoesController < ApplicationController
  before_action :set_formacao, only: [:show, :edit, :update, :destroy]

  # GET /formacoes
  def index
    # @search = Formacao.search(params[:q])
    # @formacoes = @search.result
    @formacoes = Formacao.all
  end

  # GET /formacoes/1
  def show
  end

  # GET /formacoes/new
  def new
    @formacao = Formacao.new
  end

  # GET /formacoes/1/edit
  def edit
  end

  # POST /formacoes
  def create
    @formacao = Formacao.new(formacao_params)

    if @formacao.save
      redirect_to @formacao, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /formacoes/1
  def update
    if @formacao.update(formacao_params)
      redirect_to @formacao, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /formacoes/1
  def destroy
    @formacao.destroy
    redirect_to formacoes_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_formacao
      @formacao = Formacao.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def formacao_params
      params.require(:formacao).permit(:nome, :capitulo_id, :descricao, :url)
    end
end
