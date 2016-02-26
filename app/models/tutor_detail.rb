class Tutor_detail < ActiveRecord::Base
  has_many :specializations
  belongs_to :user

end