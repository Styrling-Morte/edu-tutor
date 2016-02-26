class Ward < ActiveRecord::Base
  belongs_to :user
  has_many :tutorialsubjects
  has_many :bookings
end