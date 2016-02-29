class TutorialSubject < ActiveRecord::Base
  belongs_to :ward
  has_one :subject
end
