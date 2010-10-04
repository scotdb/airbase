class Aircraft < ActiveRecord::Base
  belongs_to :aircraft_status
  has_many   :aircraft_histories

  # cattr_reader :per_page
  # @@per_page = 50

  def self.search(search, page)
      paginate :per_page => 20,
               :page     => page,
               :conditions => ['aircraft_type like ?', "%#{search}%"],
               :order => 'aircraft_type, constructors_number'
  end
end
