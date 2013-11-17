class User < ActiveRecord::Base
  validates :full_name, presense: { message: "Please enter your full name." }
  validates :display_name, allow_blank: true, length: { in: 2..32, message: "Display name should be between 2 and 32 characters, please."}
  validates :email, presence: true
  validates :email, uniqueness: true
  validates :password_confimration, presense: true, if "!password.nil?"
  has_secure_password

  # has_many :plantations

  def admin?
    self.admin_status
  end

  # def current_plantation
  #   plantations.last
  # end

  # def past_plantations
  #   orders.sort_by { |plantation| plantation.created_at}.reverse
  # end
