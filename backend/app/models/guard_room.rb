class GuardRoom < ApplicationRecord
    
    #ASSOCIATIONS
    belongs_to :colony
    has_many :soldiers

    #CALLBACKS
    after_create :create_initial_soldiers

    #VALIDATIONS

    #FUNCTIONS
    def colony_id
        self.colony.id
    end

    def create_soldier
        self.soldiers << Soldier.create(colony_id: self.colony_id, guard_room_id: self.id)
    end
    
    private

    def create_initial_soldiers
        3.times do
            create_soldier
        end
    end
end