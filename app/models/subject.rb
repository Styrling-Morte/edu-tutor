<<<<<<< HEAD
class Subject < ActiveRecord::Base
  
end
=======
class Subject < ActiveRecord::Base
  belongs_to :tutorialsubject
  belongs_to :specialization
  belongs_to :booking

  

end
>>>>>>> master
