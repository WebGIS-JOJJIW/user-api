class User < ApplicationRecord
  has_secure_password validations: false
  belongs_to :role

  validates :login_name, presence: true, uniqueness: true
  validates :password, length: { in: 4..40 }, if: :password_required?
  validates :password, :password_confirmation, presence: true, if: :password_required?
  validates :password, confirmation: true, if: :password_required?

  def password_required?
    new_record? || password.present? || password_confirmation.present?
  end
end
