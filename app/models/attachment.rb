class Attachment < ActiveRecord::Base
	
  belongs_to :tune

  attr_accessible :file
  
  has_attached_file :file

end
