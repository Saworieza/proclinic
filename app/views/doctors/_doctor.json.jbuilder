json.extract! doctor, :id, :surname, :othernames, :dob, :specialization, :phone, :email, :gender, :details, :address, :user_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
