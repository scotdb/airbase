class Airport < ActiveRecord::Base
	has_many :airport_visits, :dependent => :destroy
end
