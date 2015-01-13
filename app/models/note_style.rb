class NoteStyle < ActiveRecord::Base
  has_and_belongs_to_many :notes
  
  validates :name, presence: true
  validates :code, presence: true
  validates :style, :inclusion => {:in => [true, false]}
  validate :check_name_code

  def check_name_code
    if name="Я" && code!="01"
      errors.add(:code,:invalid)
    end 
  end
end
