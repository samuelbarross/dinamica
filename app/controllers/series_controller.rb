class SeriesController < ApplicationController
  before_action :set_series, only: [:show, :edit, :update, :destroy]

  # GET /series
  def index
    # @search = Serie.search(params[:q])
    # @series = @search.result
    @series = Serie.all
  end

  # GET /series/1
  def show
  end

  # GET /series/new
  def new
    @series = Serie.new
  end

  # GET /series/1/edit
  def edit
  end

  # POST /series
  def create
    @series = Serie.new(series_params)

    if @series.save
      redirect_to @series, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /series/1
  def update
    if @series.update(series_params)
      redirect_to @series, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /series/1
  def destroy
    @series.destroy
    redirect_to series_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_series
      @series = Serie.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def series_params
      params.require(:series).permit(:nome, :codigo, :nivel_id)
    end
end
