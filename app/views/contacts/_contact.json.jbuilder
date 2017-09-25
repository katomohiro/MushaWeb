json.extract! contact, :id, :user_id, :person_id, :message, :created_at, :updated_at
json.url contact_url(contact, format: :json)
