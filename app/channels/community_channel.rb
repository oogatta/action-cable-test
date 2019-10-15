class CommunityChannel < ApplicationCable::Channel
  def subscribed
    unless (community = Community.find_by_id(params[:community_id]))
      return reject
    end

    if community.users.include?(current_user)
      stream_for community
    else
      reject
    end
  end

  def unsubscribed
  end
end
