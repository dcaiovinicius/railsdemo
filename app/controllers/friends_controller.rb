class FriendsController < ApplicationController
  before_action :set_friend, only: %i{ show update destroy edit }

  # GET /friends
  def index
    @friends = Friend.all
  end

  # GET /friends/1
  def show
  end

  private

    def set_friend
      @friend = Friend.find(params[:id])
    end
end
