class Person < ActiveRecord::Base
  has_many :dep_people, dependent: :destroy

  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :last_name, presence: true
end
