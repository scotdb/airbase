class Aircraft < ActiveRecord::Base
  belongs_to :aircraft_status
  has_many   :aircraft_histories

  cattr_reader :per_page
  @@per_page = 10
end
