class CommentsController < ApplicationController

  def create
      @article = Article.find(params[:article_id])
      @comment = @article.comments.new(comment_params)

      respond_to do |format|
        if @comment.save
          format.html { redirect_to @article, notice: 'Der Kommentar wurde erfolgreich gespeichert.' }
          format.json { render :show, status: :created, location: @article }
        else
          format.html { redirect_to @article, alert: 'Der Kommentar konnte leider nicht gespeichert werden.' }
          format.json { render json: @comment.errors, status: :unprocessable_entity }
        end
      end
    end

    def destroy
      @comment = Comment.find(params[:id])
      article = @comment.article
      @comment.destroy
      redirect_to article
    end

    private

    def comment_params
      params.require(:comment).permit(:body, :name, :email)
    end

end
