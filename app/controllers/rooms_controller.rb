class RoomsController < ApplicationController
  layout 'chat_layout', only: [:show]
  def index
    @rooms = Room.all
  end

  def new
    @room = Room.new
  end

  def create
    @room = Room.new(room_param)
    if @room.save
      redirect_to room_path(@room), notice: 'room was created!'
    else
      render 'new'
    end
  end

  def show
    @room = Room.find(params[:id])
    gon.room_id = @room.id
  end

  private

  def room_param
    params.require(:room).permit(:name)
  end
end
