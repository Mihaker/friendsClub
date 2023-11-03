class User < ApplicationRecord
  validates :first_name, :last_name, :email, :birthday, presence: true

  has_many :user_post

  def full_name 
    "#{first_name } #{last_name}"
  end

end
