class Like < ApplicationRecord
    belongs_to(:users, :optional => true)
    has_one(:activity)
end