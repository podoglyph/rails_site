class Admin::ArticlesController < ApplicationController
  before_action :set_article, only: [:show]


  def index
    @articles = Article.all
  end

  def show

  end

  def new
    @article = Article.new
  end

  def create
    @article = current_user.articles.new(article_params)

    if @article.save!
      flash[:success] = "New article."

      redirect_to admin_articles_path
    else
      flash[:creation_error] = "Creation Malfunction: please visit your local IT expert."
      redirect_to new_admin_article_path
    end
  end

  def update
    @article.update(article_params)
    flash[:success] = "That is updated, possibly."
    redirect_to admin_article_path(@article)
  end

  def destroy
    @article.destroy
    flash[:success] = "That is gone now."
    redirect_to admin_articles_path
  end


  private

    def set_article
      @article = Article.find(params[:id])
    end

    def article_params
      params.require(:article).permit(:title, :body)
    end

end
