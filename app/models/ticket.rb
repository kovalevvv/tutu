class Ticket < ActiveRecord::Base
  belongs_to :train
  belongs_to :start_railway_station, class_name: 'RailwayStation', foreign_key: :start_railway_station_id 
  belongs_to :stop_railway_station, class_name: 'RailwayStation', foreign_key: :stop_railway_station_id 
  belongs_to :user

  validates :train_id, :start_railway_station_id, :stop_railway_station_id, :fio, presence: true
end
