class ActualRole < ApplicationRecord
  belongs_to :user
  default_scope -> { order(end_date: :desc) }
  validates :user_id, presence: true
  validates :role, presence: true
  validates :details, presence: true
  validates :organization, presence: true, length: { maximum: 140 }
  # validates :start_date, presence: true
  # validates :end_date, presence: true
end
