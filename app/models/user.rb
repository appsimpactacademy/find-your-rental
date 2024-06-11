class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, 
         :registerable,
         :recoverable, 
         :rememberable, 
         :validatable, 
         :confirmable, 
         :trackable

  validates :first_name, :last_name, :contact_number, :whatsapp_number, :role, presence: true

  def name
    "#{first_name} #{last_name}".strip
  end
end
