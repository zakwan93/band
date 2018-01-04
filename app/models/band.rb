class Band < ApplicationRecord
	has_many :events
	has_many :venues, :through => :events

	validates :name, presence: true, uniqueness: true
	validates :genre, presence: true
end

