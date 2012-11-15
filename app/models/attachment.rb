class Attachment < ActiveRecord::Base
	
  belongs_to :tune

  attr_accessible :file, :version_name
  
  has_attached_file :file , :path => ":rails_root/public/tunes/:filename"

end
