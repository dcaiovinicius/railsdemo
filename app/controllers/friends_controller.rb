class FriendsController < ApplicationController

  # GET /friends
  def index
    @friends = Friend.all
  end
end
