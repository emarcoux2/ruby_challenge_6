class Customer < ApplicationRecord
  def self.ransackable_attributes(auth_object = nil)
    [ "created_at", "email_address", "full_name", "id", "notes", "phone_number", "updated_at" ]
  end

  has_one_attached :image

  validates :full_name, :phone_number, presence: true
end
