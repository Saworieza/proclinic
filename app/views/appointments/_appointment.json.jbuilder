json.extract! appointment, :id, :patient_id, :doctor_id, :department_id, :date, :timeSlot, :token, :problem, :diagnosed, :user_id, :created_at, :updated_at
json.url appointment_url(appointment, format: :json)
