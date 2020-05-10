class ReviewsController < ApplicationController

  before_action :find_play

  def new
    @review=Review.new
  end

  def create
    @review = Review.create(review_params)
  end

  private
  def find_play
    @play=Play.find(params[:play_id])
    @review.play_id = @play.id
    @review.user_id = current_user.id
    if @review.save
      redirect_to play_path(@play)
    else
      render 'new'
    end
  end

  def review_params
    params.require(:review).permit(:rating, :comment)
  end
end
