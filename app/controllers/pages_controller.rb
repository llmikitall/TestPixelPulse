class PagesController < ApplicationController
  layout 'application'

  def index
  end
  
  def login
  end
  
  def registration
  end
  
  def news
    @articles = Article.all
  end
  
  def show_news
    @article_item = Article.find(params[:id])
    rescue ActiveRecord::RecordNotFound
    redirect_to news_path, alert: "Not Found"
  end
end
