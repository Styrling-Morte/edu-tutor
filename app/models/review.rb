class Review < ActiveRecord::Base
  belongs_to :user
  belongs_to :tutor_detail

end