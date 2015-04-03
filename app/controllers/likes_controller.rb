class LikesController < ApplicationController

  def create
    @pin = Pin.find(params[:pin_id])
    if !current_user
      redirect_to new_user_session_path
    elsif current_user.has_liked?(@pin)
      flash[:notice] = 'You have already liked this pin'
      redirect_to pins_path
    else
      like = @pin.likes.create
      like.user_id = current_user.id
      like.save!
      redirect_to pins_path 
    end
  end

end