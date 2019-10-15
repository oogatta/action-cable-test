class CommunityChannel < ApplicationCable::Channel
  def subscribed
    if (community = Community.find_by_id(params[:community_id]))
      stream_for community
    end
  end

  def unsubscribed
  end
end
