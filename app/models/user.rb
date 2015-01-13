class User < ActiveRecord::Base
  authenticates_with_sorcery!

  has_and_belongs_to_many :departments

  validates :username, presence: true, uniqueness: true
  validates_presence_of :password, if: :password_required?
  validates_confirmation_of :password, if: :password_required?
  validates_length_of :password, within: 5..255, allow_blank: true
 
  validates :first_name, presence: true
  validates :second_name, presence: true
  validates :last_name, presence: true

  validates :is_operator, :inclusion => {:in => [true, false]}
  validates :is_admin, :inclusion => {:in => [true, false]}

  def admin?
    self.is_admin == true
  end
  def operator?
    self.is_operator == true
  end
  private
  def default_values
    self.is_operator ||= false
    self.is_admin ||= false
  end
  def password_required?
    password.present? || password_confirmation.present?
  end
end
