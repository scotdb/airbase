class AircraftHistory < ActiveRecord::Base
  belongs_to :aircraft
  acts_as_list :scope => :aircraft, :column => :aircraft_sequence
end
