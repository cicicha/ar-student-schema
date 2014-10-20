require_relative '../../db/config'

class Subject < ActiveRecord::Base
  # implement your Subject model here
  belongs_to :student
  belongs_to :teacher
  validates_uniqueness_of :teachers_id, scope: [:students_id]
end