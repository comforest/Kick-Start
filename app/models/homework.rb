class Homework < ActiveRecord::Base
    
    belongs_to :working
    belongs_to :meeting
    belongs_to :student
    serialize :rating
    serialize :content
    
end
