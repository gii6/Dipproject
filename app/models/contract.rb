class Contract < ActiveRecord::Base
  has_many :dep_people, dependent: :destroy

  validates :post, presence: true
  validates :rate, presence: true
  validates :budget, presence: true
  validates :style, presence: true
  validates :start, presence: true 
  validates :finish, presence: true
  
  RATE=["1", "0.75", "0.5", "0.25"]
  BUDGET=["Бюджет","Внебюджет"]
  STYLE=["Совместительтво","Штат","Контракт","Почасовик"]
end
