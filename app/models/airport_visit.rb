class AirportVisit < ActiveRecord::Base
  belongs_to :airport
  has_many   :seenlists
end
