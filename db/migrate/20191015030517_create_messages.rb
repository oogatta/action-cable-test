class CreateMessages < ActiveRecord::Migration[5.2]
  def change
    create_table :messages do |t|
      t.text :body
      t.references :from
      t.references :to

      t.timestamps
    end
  end
end
