class PlanejamentoPedagogicosController < ApplicationController
  before_action :set_planejamento_pedagogico, only: [:show, :edit, :update, :destroy]

  # GET /planejamento_pedagogicos
  def index
    # @search = PlanejamentoPedagogico.search(params[:q])
    # @planejamento_pedagogicos = @search.result
    @planejamento_pedagogicos = PlanejamentoPedagogico.all
  end

  # GET /planejamento_pedagogicos/1
  def show
  end

  # GET /planejamento_pedagogicos/new
  def new
    @planejamento_pedagogico = PlanejamentoPedagogico.new
  end

  # GET /planejamento_pedagogicos/1/edit
  def edit
  end

  # POST /planejamento_pedagogicos
  def create
    @planejamento_pedagogico = PlanejamentoPedagogico.new(planejamento_pedagogico_params)

    if @planejamento_pedagogico.save
      redirect_to @planejamento_pedagogico, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /planejamento_pedagogicos/1
  def update
    if @planejamento_pedagogico.update(planejamento_pedagogico_params)
      redirect_to @planejamento_pedagogico, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /planejamento_pedagogicos/1
  def destroy
    @planejamento_pedagogico.destroy
    redirect_to planejamento_pedagogicos_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_planejamento_pedagogico
      @planejamento_pedagogico = PlanejamentoPedagogico.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def planejamento_pedagogico_params
      params.require(:planejamento_pedagogico).permit(:capitulo_id, :numero_semana)
    end
end
