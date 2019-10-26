class Colony < ApplicationRecord
    has_one :queen
    has_one :commons
end