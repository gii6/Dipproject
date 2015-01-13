class Department < ActiveRecord::Base
  belongs_to :year
  has_many :dep_people, dependent: :destroy
  has_and_belongs_to_many :users
  
  validates :style, presence: true
  validates :name, presence: true
  validates :director, presence: true
  validates :responsible, presence: true
  validates :year_id, presence: true
  
  DEPSTYLE=["ППС","УВП","ППС/УВП"]
end
