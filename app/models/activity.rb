class Activity < ApplicationRecord
    has_many(:commitments)
    has_many(:likes)
end