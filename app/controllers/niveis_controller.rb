class NiveisController < ApplicationController
  before_action :set_nivel, only: [:show, :edit, :update, :destroy]

  # GET /niveis
  def index
    # @search = Nivel.search(params[:q])
    # @niveis = @search.result
    @niveis = Nivel.all
  end

  # GET /niveis/1
  def show
  end

  # GET /niveis/new
  def new
    @nivel = Nivel.new
  end

  # GET /niveis/1/edit
  def edit
  end

  # POST /niveis
  def create
    @nivel = Nivel.new(nivel_params)

    if @nivel.save
      redirect_to @nivel, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /niveis/1
  def update
    if @nivel.update(nivel_params)
      redirect_to @nivel, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /niveis/1
  def destroy
    @nivel.destroy
    redirect_to niveis_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_nivel
      @nivel = Nivel.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def nivel_params
      params.require(:nivel).permit(:nome, :codigo)
    end
end
