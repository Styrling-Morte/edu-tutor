class User < ActiveRecord::Base

  has_secure_password

  has_many :wards
  has_one :tutor_detail


  validates :first_name, :last_name, :address, :phone_number, :email,
            :postal_code, :city, :province, :account_type, presence: true

end
