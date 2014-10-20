require_relative '../../db/config'

class Teacher < ActiveRecord::Base
  # implement your Teacher model here
  has_many :subjects
  has_many :students, :through => :subjects
  validates_uniqueness_of :email
end