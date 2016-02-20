class Train < ActiveRecord::Base
  belongs_to :route
  has_many :tickets
  has_many :coaches


  def count_coaches coach_type
  	self.coaches.where(coach_type: coach_type).count
  end

  def count_seats coach_type, seat_type
  	self.coaches.where(coach_type: coach_type).sum(seat_type)
  end

end
