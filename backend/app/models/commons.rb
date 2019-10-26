class Commons < ApplicationRecord
    
    #ASSOCIATIONS
    belongs_to :colony

    has_many :workers

    #CALLBACKS
    after_create :create_initial_workers

    #FUNCTIONS
    

    def colony_id
        self.colony.id
    end

    def create_worker
        self.workers << Worker.create(colony_id: self.colony_id, commons_id: self.id)
    end

    private 

    def create_initial_workers
        3.times do 
            self.create_worker
        end
    end
end