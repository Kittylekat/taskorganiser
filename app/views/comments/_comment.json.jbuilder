json.extract! comment, :id, :task_id, :content, :created_at, :updated_at
json.url comment_url(comment, format: :json)