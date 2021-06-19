json.extract! review, :id, :title, :published, :author, :category_id, :score, :content, :portrait, :created_at, :updated_at
json.url review_url(review, format: :json)
json.portrait url_for(review.portrait)
