class Coach < ActiveRecord::Base
  belongs_to :train

  validates :coach_type, :seats_all_up, :seats_all_down, presence: true
  validates :seats_all_up, :seats_all_down, numericality: { only_integer: true }
end