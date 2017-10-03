class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]
  before_action :set_variable_for_form, only: [:new, :edit, :search]

  # GET /articles
  # GET /articles.json
  def index
    @articles = Article.all
  end
  
  def search
    if params[:search_articles].nil?
      @search = Search::Article.new
    else
      @search = Search::Article.new(search_params)
      @articles = @search.search    
    end
  end

  # GET /articles/1
  # GET /articles/1.json
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
  # POST /articles.json
  def create
    @article = Article.new(article_params)
    associate
    if @article.save
     redirect_to @article, notice: '記事が作成されました。'    
    else
      render :new
    end
  end

  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    if @article.update(article_params)
      redirect_to @article, notice: '記事が編集されました。'
    else
      render :edit 
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    redirect_to articles_url, notice: '記事が削除されました。' 
  end

  private
    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :description, :content)
    end
    
    def associate
      industry = Industry.where(id: params[:industry_ids])
      @article.industries << industry
      occupation = Occupation.where(id: params[:occupation_ids])
      @article.occupations << occupation
    end
    
    def search_params
      params.require(:search_article).permit(Search::Product::ATTRIBUTES)
    end
end
