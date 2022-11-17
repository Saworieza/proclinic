json.extract! admission, :id, :ward_id, :admissionDate, :dischargeDate, :appointment_id, :user_id, :created_at, :updated_at
json.url admission_url(admission, format: :json)
