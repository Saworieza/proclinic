json.extract! patient, :id, :surname, :othernames, :age, :gender, :phone, :address, :idNo, :user_id, :created_at, :updated_at
json.url patient_url(patient, format: :json)
