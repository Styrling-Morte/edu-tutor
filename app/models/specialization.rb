class Specialization < ActiveRecord::Base
  belongs_to :tutor_detail
  has_one :subject
  

end