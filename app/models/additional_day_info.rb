class AdditionalDayInfo < ActiveRecord::Base
  belongs_to :year

  validates :year_id, presence: true
  validates :day, presence: true
  validates :style, presence: true
  
  DAYSTYLE=["Рабочий день для всех", "Рабочий день для работников с 6-дневной рабочей неделей", "Выходной (праздник)", "Выходной для работников с 5-дневной рабочей неделей", "Короткий день"]
  
end
