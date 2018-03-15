json.extract! appointment_slot, :id, :time, :patient, :symptom, :created_at, :updated_at
json.url appointment_slot_url(appointment_slot, format: :json)
