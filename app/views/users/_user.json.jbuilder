json.extract! user, :id, :surname, :givenname, :email, :created_at, :updated_at
json.url user_url(user, format: :json)