json.extract! diagnosis, :id, :appointment_id, :disease, :created_at, :updated_at
json.url diagnosis_url(diagnosis, format: :json)
