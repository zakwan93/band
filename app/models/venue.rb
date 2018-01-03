class Venue < ApplicationRecord
	has_many :events
	has_many :bands, through: :events
end
