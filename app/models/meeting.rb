class Meeting < ActiveRecord::Base
    
    belongs_to :working
    has_many :homeworks
end
