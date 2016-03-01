class Subject < ActiveRecord::Base
  belongs_to :tutorial_subject
  has_one :specialization
end
