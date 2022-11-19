json.extract! payment, :id, :appointment_id, :admission_id, :amount, :paymentType, :user_id, :created_at, :updated_at
json.url payment_url(payment, format: :json)
