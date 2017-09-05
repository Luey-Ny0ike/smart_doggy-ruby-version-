class CommentsController < ApplicationController
  load_and_authorize_resource
  before_action :set_comment, only: [:show, :edit, :update, :destroy]
  skip_authorize_resource :only => [:index, :show]

  # GET /comments
  # GET /comments.json
  def index
    @testimonial = Testimonial.find(params[:testimonial_id])
    @comments = @testimonial.comments.all
  end

  # GET /comments/1
  # GET /comments/1.json
  def show
    @testimonial = Testimonial.find(params[:testimonial_id])
    @comment = @testimonial.comments.find(params[:id])
  end

  # GET /comments/new
  def new
    @testimonial = Testimonial.find(params[:testimonial_id])
    @comment = @testimonial.comments.new
    @comment.user_id = current_user.id
  end

  # POST /comments
  # POST /comments.json
  def create
    @testimonial = Testimonial.find(params[:testimonial_id])
    @comment = @testimonial.comments.new(comment_params)
    @comment.user_id = current_user.id
    if @comment.save
      redirect_to testimonial_comments_path
   else
     render :new
    end
  end
end

# GET /comments/1/edit
def edit
  @testimonial = Testimonial.find(params[:testimonial_id])
end


  # PATCH/PUT /comments/1
  # PATCH/PUT /comments/1.json
  def update
    if @testimonial.comments.update(comment_params)
      flash[:notice] = "Comment updated successfully"
      redirect_to testimonial_comments_path(@comment.testimonial)
    else
      flash[:alert] = "Comment was not updated!"
      render :edit
    end
  end

  # DELETE /comments/1
  # DELETE /comments/1.json
  def destroy
    @comment.destroy
    redirect_to testimonial_comments_path(@comment.testimonial)
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_comment
      @comment = Comment.find(params[:id])
      @testimonial = Testimonial.find(params[:testimonial_id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def comment_params
      params.require(:comment).permit(:comment)
    end
