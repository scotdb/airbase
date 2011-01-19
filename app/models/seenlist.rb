class Seenlist < ActiveRecord::Base
  belongs_to :aircraft_history
  belongs_to :airport_visit
end
