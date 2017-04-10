class RoomChannel < ApplicationCable::Channel
  def subscribed
    stream_from room_channel_id
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end

  def speak(data)
    room = Room.find(params[:room])
    message = room.messages.build(content: data['message'], user: current_user)
    message.save!
    MessageBroadcastJob.perform_now(message, room_channel_id)
  end

  private

  def room_channel_id
    "room_#{params[:room]}"
  end
end
