class Ward < ActiveRecord::Base
  belongs_to :user
  has_many :tutorial_subjects
  has_many :bookings

  validates :first_name, :grade_school_level, presence: true
end
