class Professor < ActiveRecord::Base
    has_many :lessons
    serialize :lesson
end
