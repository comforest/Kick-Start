class Homework < ActiveRecord::Base
    
    belongs_to :working
    belongs_to :meeting
    
end
