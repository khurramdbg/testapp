class ArticlesController < ApplicationController

    def def new
        @article = Article.new
        @article.errors = []
    end
    
    def create
        #render plain: params[:article].inspect

        @article = Article.new(params[:article])
        if @article.save
          flash[:success] = "Object successfully created"
          redirect_to article_path(@article)
        else
          flash[:error] = "Something went wrong"
          render 'new'
        end
    end
    
def show
    @article = Article.find(params[:id])
end

    private
    def article_params
        params.require(:article).permit(:title, :description)
    end
  
    
end