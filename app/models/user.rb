class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
        :recoverable, :rememberable, :trackable, :validatable
  has_many :partner_websites
  has_many :partner_website_visits



  def customer?
    role == 0
  end

  def partner?
    role == 1
  end

  def admin?
    role == 2
  end

end
