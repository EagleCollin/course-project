class Course < ApplicationRecord
    has_many :workloads
    has_many :students, :through => :workloads
end
