class TutorDetail < ActiveRecord::Base
  has_many :specializations
  belongs_to :user
 

end
