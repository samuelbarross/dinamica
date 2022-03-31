class LivrosController < ApplicationController
  before_action :set_livro, only: [:show, :edit, :update, :destroy]

  # GET /livros
  def index
    # @search = Livro.search(params[:q])
    # @livros = @search.result
    @livros = Livro.all
  end

  # GET /livros/1
  def show
  end

  # GET /livros/new
  def new
    @livro = Livro.new
  end

  # GET /livros/1/edit
  def edit
  end

  # POST /livros
  def create
    @livro = Livro.new(livro_params)

    if @livro.save
      redirect_to @livro, notice: 'Registro criado com sucesso.'
    else
      render :new
    end
  end

  # PATCH/PUT /livros/1
  def update
    if @livro.update(livro_params)
      redirect_to @livro, notice: 'Registro atualizado com sucesso.'
    else
      render :edit
    end
  end

  # DELETE /livros/1
  def destroy
    @livro.destroy
    redirect_to livros_url, notice: 'Registro removido com sucesso.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_livro
      @livro = Livro.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def livro_params
      params.require(:livro).permit(:nome, :serie_id, :volume, :ano_edicao)
    end
end
