class User < ActiveRecord::Base

  has_secure_password

  validates :first_name, :last_name, :address, :phone_number, :email,
            :postal_code, :city, :province, :account_type, presence: true

  def has_wards?
    # checks if a parent has any wards connected to their account
    # if current_user.wards_id.blank?
    #   return false
    # else
    # return true
    #end
  end
end
