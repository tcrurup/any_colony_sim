class Nursery < ApplicationRecord

    #ASSOCIATIONS
    belongs_to :colony
    has_many :nurses

    #CALLBACKS
    after_create :create_initial_nurses
    
    #VALIDATIONS

    #FUNCTIONS

    def create_nurse
        self.nurses << Nurse.create(colony_id: self.colony_id, nursery_id: self.id)
    end

    private

    def create_initial_nurses
        3.times do
            self.create_nurse
        end
    end
end