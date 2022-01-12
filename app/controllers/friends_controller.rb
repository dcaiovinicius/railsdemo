class FriendsController < ApplicationController
  before_action :authenticate_user!
  before_action :current_user
  before_action :set_friend, only: %i{ show update destroy edit }

  # GET /friends
  def index
    @friends = current_user.friends.all
  end

  # GET /friends/1
  def show
  end

  # GET /friends/new
  def new
    @friend = current_user.friends.build
  end

  # POST /friends
  def create
    @friend = current_user.friends.build(friend_params)

    respond_to do |format|
      if @friend.save
        format.html { redirect_to friends_url(@friend) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # GET /friends/1
  def edit
  end

  # patch/post /friends
  def update
    respond_to do |format|
      if @friend.update(friend_params)
        format.html { redirect_to friend_url(@friend) }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  # delete /friends
  def destroy
    @friend.destroy

    respond_to do |format|
      format.html { redirect_to friends_url }
    end
  end

  private

    def set_friend
      @friend = Friend.find(params[:id])
    end

    def friend_params
      params.require(:friend).permit(:first_name, :email, :phone, :description, :user_id)
    end
end
