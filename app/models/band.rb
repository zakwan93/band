class Band < ApplicationRecord
	has_many :events
	has_many :venues, :through => :events
	
	validates_uniqueness_of :name, presence: true
	validates :genre, presence: true
end

