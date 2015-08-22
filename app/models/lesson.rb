class Lesson < ActiveRecord::Base
    belongs_to :professor
    serialize :working
end
