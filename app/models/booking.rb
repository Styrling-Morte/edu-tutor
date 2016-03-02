class Booking < ActiveRecord::Base
  belongs_to :tutor_detail
  belongs_to :ward
  has_one :subject
end
