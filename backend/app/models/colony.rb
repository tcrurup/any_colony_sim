class Colony < ApplicationRecord
    
    #ASSOCIATIONS
    has_one :queen
    has_one :commons
    has_one :nursery
    has_one :guard_room

    #CALLBACKS
    before_create :create_colony_rooms
    
    #VALIDATIONS

    def create_colony_rooms
        self.commons = Commons.create
        self.nursery = Nursery.create
        self.guard_room = GuardRoom.create
    end

    

    
end