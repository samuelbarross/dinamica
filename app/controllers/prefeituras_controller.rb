class PrefeiturasController < ApplicationController
  before_action :set_prefeitura, only: [:show, :edit, :update, :destroy]

  # GET /prefeituras
  def index
    # @search = Prefeitura.search(params[:q])
    # @prefeituras = @search.result
    @prefeituras = Prefeitura.all
  end

  # GET /prefeituras/1
  def show
  end

  # GET /prefeituras/new
  def new
    @prefeitura = Prefeitura.new
  end

  # GET /prefeituras/1/edit
  def edit
  end

  # POST /prefeituras
  def create
    @prefeitura = Prefeitura.new(prefeitura_params)

    if @prefeitura.save
      redirect_to @prefeitura, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /prefeituras/1
  def update
    if @prefeitura.update(prefeitura_params)
      redirect_to @prefeitura, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /prefeituras/1
  def destroy
    @prefeitura.destroy
    redirect_to prefeituras_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_prefeitura
      @prefeitura = Prefeitura.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def prefeitura_params
      params.require(:prefeitura).permit(:nome, :cidade_id)
    end
end
