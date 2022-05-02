class Commitment < ApplicationRecord
    belongs_to(:users, :optional => true)
    has_one(:activity)
end