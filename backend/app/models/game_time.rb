class GameTime < ApplicationRecord
    
    #ASSOCIATIONS
    belongs_to :colony

    #CALLBACKS
    before_create :set_initial_day_and_time

    #VALIDATIONS

    def advance_time
        case self.time_of_day
        when "morning"
            self.time_of_day = 'noon'
        when "noon"
            self.time_of_day = 'evening'
        when "evening"
            self.time_of_day = 'midnight'
        when "midnight"
            next_day
        end
        self
    end
    
    private

    def next_day
        self.tap do |x|
            x.time_of_day = 'morning'
            x.day = self.day + 1
        end
    end
    
    def set_initial_day_and_time
        self.day = 1;
        self.time_of_day = 'morning'
    end
end