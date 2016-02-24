class User < ActiveRecord::Base

  has_secure_password

  validates :first_name, :last_name, :address, :phone_number, :email,
            :postal_code, :city, :province, :account_type, presence: true

end
