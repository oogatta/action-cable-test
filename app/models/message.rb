class Message < ApplicationRecord
  belongs_to :from, class_name: 'User'
  belongs_to :to, class_name: 'User'

  after_create :broadcast_message

  protected

    def broadcast_message
      ChatChannel.broadcast_to(from, self)
      ChatChannel.broadcast_to(to, self)
    end
end
