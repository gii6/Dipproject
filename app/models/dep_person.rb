class DepPerson < ActiveRecord::Base
  belongs_to :department
  belongs_to :contract
  belongs_to :person

  validates :department_id, presence: true
  validates :contract_id, presence: true
  validates :person_id, presence: true
end
