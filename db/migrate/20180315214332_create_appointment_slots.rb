class CreateAppointmentSlots < ActiveRecord::Migration[5.1]
  def change
    create_table :appointment_slots do |t|
      t.string :time
      t.string :patient
      t.string :symptom

      t.timestamps
    end
  end
end
