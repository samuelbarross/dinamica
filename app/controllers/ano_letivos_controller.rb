class AnoLetivosController < ApplicationController
  before_action :set_ano_letivo, only: [:show, :edit, :update, :destroy]

  # GET /ano_letivos
  def index
    # @search = AnoLetivo.search(params[:q])
    # @ano_letivos = @search.result
    @ano_letivos = AnoLetivo.all
  end

  # GET /ano_letivos/1
  def show
  end

  # GET /ano_letivos/new
  def new
    @ano_letivo = AnoLetivo.new
  end

  # GET /ano_letivos/1/edit
  def edit
  end

  # POST /ano_letivos
  def create
    @ano_letivo = AnoLetivo.new(ano_letivo_params)

    if @ano_letivo.save
      redirect_to @ano_letivo, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /ano_letivos/1
  def update
    if @ano_letivo.update(ano_letivo_params)
      redirect_to @ano_letivo, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /ano_letivos/1
  def destroy
    @ano_letivo.destroy
    redirect_to ano_letivos_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ano_letivo
      @ano_letivo = AnoLetivo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def ano_letivo_params
      params.require(:ano_letivo).permit(:ano)
    end
end
