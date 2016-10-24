class Course < ActiveRecord::Base
  has_many :counters, foreign_key: "courses_id"
end
