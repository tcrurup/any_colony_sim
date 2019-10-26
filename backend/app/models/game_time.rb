class GameTime < ApplicationRecord
    
    #ASSOCIATIONS
    belongs_to :colony

    #CALLBACKS
    before_create :set_initial_day_and_time

    #VALIDATIONS

    def set_initial_day_and_time
        self.day = 1;
        self.time_of_day = 'morning'
    end
end