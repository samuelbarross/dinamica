class CapitulosController < ApplicationController
  before_action :set_capitulo, only: [:show, :edit, :update, :destroy]

  # GET /capitulos
  def index
    # @search = Capitulo.search(params[:q])
    # @capitulos = @search.result
    @capitulos = Capitulo.all
  end

  # GET /capitulos/1
  def show
  end

  # GET /capitulos/new
  def new
    @capitulo = Capitulo.new
  end

  # GET /capitulos/1/edit
  def edit
  end

  # POST /capitulos
  def create
    @capitulo = Capitulo.new(capitulo_params)

    if @capitulo.save
      redirect_to @capitulo, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /capitulos/1
  def update
    if @capitulo.update(capitulo_params)
      redirect_to @capitulo, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /capitulos/1
  def destroy
    @capitulo.destroy
    redirect_to capitulos_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_capitulo
      @capitulo = Capitulo.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def capitulo_params
      params.require(:capitulo).permit(:nome, :numero, :livro_id, :disciplina_id)
    end
end
