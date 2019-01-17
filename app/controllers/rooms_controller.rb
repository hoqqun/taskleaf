class RoomsController < ApplicationController
  def index
    @messages = Message.recent
  end
end
