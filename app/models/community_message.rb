class CommunityMessage < ApplicationRecord
  belongs_to :community
  belongs_to :user

  after_create :broadcast_message

  protected

  def broadcast_message
    CommunityChannel.broadcast_to(community, self)
  end
end
