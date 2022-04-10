json.extract! most_ranked_post, :id, :user_id, :posts_id, :created_at, :updated_at
json.url most_ranked_post_url(most_ranked_post, format: :json)
