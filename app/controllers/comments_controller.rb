class CommentsController < ApplicationController
   http_basic_authenticate_with name: "dhh", password: "secret", only: :destroy  
    
def create
    @temperature = Temperature.find(params[:temperature_id])
    @comment = @temperature.comments.create(comment_params)
    redirect_to temperature_path(@temperature)
  end
 
  def destroy
    @temperature = Temperature.find(params[:temperature_id])
    @comment = @temperature.comments.find(params[:id])
    @comment.destroy
    redirect_to temperature_path(@temperature)
  end
  private
    def comment_params
      params.require(:comment).permit(:commenter, :body)
    end
end
