class ContactShare < ActiveRecord::Base

  belongs_to :user

  belongs_to :contact

  validates :contact, :user, presence: true
  validates :contact_id, uniqueness: { scope: :user_id }
end
