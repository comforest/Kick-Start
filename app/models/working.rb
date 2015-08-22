class Working < ActiveRecord::Base
    
    has_many :meetings
    has_many :homeworks
    serialize :memberlist
end
