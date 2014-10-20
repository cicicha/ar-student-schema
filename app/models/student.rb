require_relative '../../db/config'

class Student < ActiveRecord::Base
# implement your Student model here
  has_many :subjects
  has_many :teachers, :through => :subjects
  validates_format_of :email, with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i
  validates_uniqueness_of :email
  validates_inclusion_of :age, in: 5..99
  validates_length_of :phone, in: 10..32, numericality: { only_integer: true }
  
  def name
    "#{first_name} #{last_name}"
  end
  def age
    Time.now.year - birthday.year
  end
end
