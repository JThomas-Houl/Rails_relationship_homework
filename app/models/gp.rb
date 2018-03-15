class Gp < ApplicationRecord
    has_one :surgery
    has_many :appointment_slots


end
