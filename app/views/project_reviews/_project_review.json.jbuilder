json.extract! project_review, :id, :stars, :description, :user_id, :project_id, :created_at, :updated_at
json.url project_review_url(project_review, format: :json)
