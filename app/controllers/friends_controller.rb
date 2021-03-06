class FriendsController < ApplicationController
  before_action :set_friend, only: %i[ show edit update destroy ]
  
  def index
    @friends = Friend.all
  end

  def new
    @friend = Friend.new
  end

  def edit
  end

  def show
  end

  def create
    @friend = Friend.new(friend_params)

      if @friend.save
         redirect_to @friend, notice: "Friend was successfully created." 
      else
         render :new, status: :unprocessable_entity 
      end
  end

  def update
      if @friend.update(friend_params)
         redirect_to @friend, notice: "Friend was successfully updated." 
      else
         render :edit, status: :unprocessable_entity 
      end
  end

  def destroy
    @friend.destroy
      redirect_to friends_path, notice: "Friend was successfully destroyed." 
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_friend
      @friend = Friend.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def friend_params
      params.require(:friend).permit(:first_name, :last_name, :email, :phone, :twitter)
    end
end
