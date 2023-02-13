class Student < ApplicationRecord
    has_many :workloads
    has_many :courses, :through => :workloads
end
