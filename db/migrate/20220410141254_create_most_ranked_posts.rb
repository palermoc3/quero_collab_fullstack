class CreateMostRankedPosts < ActiveRecord::Migration[6.1]
  def change
    create_table :most_ranked_posts do |t|
      t.references :user, null: false, foreign_key: true
      t.string :posts_id

      t.timestamps
    end
  end
end
