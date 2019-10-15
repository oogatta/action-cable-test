class CreateCommunityMemberships < ActiveRecord::Migration[5.2]
  def change
    create_table :community_memberships do |t|
      t.references :community, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
