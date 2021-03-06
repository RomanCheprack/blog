class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  # GET /articles

  def index
    @articles = Article.all
  end

  # GET /articles/1

  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
  end

  # GET /articles/1/edit
  def edit
  end

  # POST /articles

  def create
    @article = Article.new(article_params)
    @article.save
    redirect_to root_path
  end

  # PATCH/PUT /articles/1

  def update
    if @article.update(article_params)
      redirect_to root_path
    else
      render :edit
    end
  end

  # DELETE /articles/1

  def destroy
    @article.destroy
    redirect_to root_path
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
      params.require(:article).permit(:title, :body)
    end
end
