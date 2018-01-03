class Event < ApplicationRecord
	has_one :vanue
end


class Event < ApplicationRecord
	belongs_to :vanue
end