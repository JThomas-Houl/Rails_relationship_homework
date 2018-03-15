json.extract! appointment_slot, :id, :time, :patient, :symptom, :gp_id, :created_at, :updated_at
json.url appointment_slot_url(appointment_slot, format: :json)
