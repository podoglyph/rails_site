class ArticlesController < ApplicationController
  
  before_action :set_article, only: [:show]

  def index
    @articles = Article.all
  end

  def show
    @article
  end


  private

    def set_article
      @article = Article.find(params[:id])
    end

end
