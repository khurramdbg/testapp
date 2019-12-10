class ArticlesController < ApplicationController
    before_action :set_article, only: [:edit, :update, :show, :destroy]
    def index
        @articles = Article.all
    end

    def new
        @article = Article.new
    end
    
    def create
        #render plain: params[:article].inspect

        @article = Article.new(article_params)
        if @article.save
          flash[:success] = "Object successfully created"
          redirect_to article_path(@article)
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
def edit    
    #@article = Article.find(params[:id])
end


 def update
        #render plain: params[:article].inspect

        #@article = Article.find(params[:id])
        if @article.update(article_params)
          flash[:success] = "Article successfully updated"
          redirect_to article_path(@article)
        else
          flash[:error] = "Something went wrong with editing"
          render 'edit'
        end
    end

def destroy
    #@article = Article.find(params[:id])
    @article.destroy
    flash[:success] = "Article removed successfully"
    redirect_to articles_path
end

def show
    #?@article = Article.find(params[:id])
end

    private

    def set_article
        @article = Article.find(params[:id])
    end

    def article_params
        params.require(:article).permit(:title, :description, :author)
    end
  
    
end