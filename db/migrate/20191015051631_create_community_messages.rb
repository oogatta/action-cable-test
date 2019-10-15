class CreateCommunityMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :community_messages do |t|
      t.references :community, foreign_key: true
      t.references :user, foreign_key: true
      t.text :body

      t.timestamps
    end
  end
end
