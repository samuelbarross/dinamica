class MateriasController < ApplicationController
  before_action :set_materia, only: [:show, :edit, :update, :destroy]

  # GET /materias
  def index
    # @search = Materia.search(params[:q])
    # @materias = @search.result
    @materias = Materia.all
  end

  # GET /materias/1
  def show
  end

  # GET /materias/new
  def new
    @materia = Materia.new
  end

  # GET /materias/1/edit
  def edit
  end

  # POST /materias
  def create
    @materia = Materia.new(materia_params)

    if @materia.save
      redirect_to @materia, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /materias/1
  def update
    if @materia.update(materia_params)
      redirect_to @materia, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /materias/1
  def destroy
    @materia.destroy
    redirect_to materias_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_materia
      @materia = Materia.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def materia_params
      params.require(:materia).permit(:nome, :codigo)
    end
end
