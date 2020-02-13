class RoomsController < ApplicationController
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_params)
    if @room.save
    redirect_to root_path
    else
     render new_room_path
    end
  end

  def show
    @room = Room.find(params[:id])
  end

  private
  def room_params
    params.require(:room).permit(:name,:phone,:meal,:people,:lodging_id,:time)
  end
end


