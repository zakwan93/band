class Band < ApplicationRecord
	has_many :events
	belongs_to :venue, through: :events
end
