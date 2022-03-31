class ContratosController < ApplicationController
  before_action :set_contrato, only: [:show, :edit, :update, :destroy]

  # GET /contratos
  def index
    # @search = Contrato.search(params[:q])
    # @contratos = @search.result
    @contratos = Contrato.all
  end

  # GET /contratos/1
  def show
  end

  # GET /contratos/new
  def new
    @contrato = Contrato.new
  end

  # GET /contratos/1/edit
  def edit
  end

  # POST /contratos
  def create
    @contrato = Contrato.new(contrato_params)

    if @contrato.save
      redirect_to @contrato, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /contratos/1
  def update
    if @contrato.update(contrato_params)
      redirect_to @contrato, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /contratos/1
  def destroy
    @contrato.destroy
    redirect_to contratos_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_contrato
      @contrato = Contrato.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def contrato_params
      params.require(:contrato).permit(:prefeitura_id, :ano_letivo_id)
    end
end
