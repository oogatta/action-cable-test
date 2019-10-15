class Community < ApplicationRecord
  has_many :community_memberships
  has_many :users, through: :community_memberships
end
