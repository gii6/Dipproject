class Note < ActiveRecord::Base
  belongs_to :dep_person
  has_and_belongs_to_many :note_styles

  validates :start, presence: true
  validates :finish, presence: true  
  validates :dep_person_id, presence: true
end
