class Year < ActiveRecord::Base
  has_many :departments, dependent: :destroy
  has_many :additional_day_infos, dependent: :destroy

  validates :name, presence: true
  validates :is_current, :inclusion => {:in => [true, false]}
  validates :month, presence: true
end
