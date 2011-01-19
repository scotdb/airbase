class AircraftHistory < ActiveRecord::Base
  belongs_to :aircraft
  has_many   :seenlists
  acts_as_list :scope => :aircraft, :column => :aircraft_sequence
end
