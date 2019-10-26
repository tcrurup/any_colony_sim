class Colony < ApplicationRecord
    has_one :queen
    has_one :commons
    has_one :nursery
    has_one :guard_room
end