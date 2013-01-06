class Attachment < ActiveRecord::Base

  belongs_to :tune

  attr_accessible :file, :version_name
  
  #determine where files are uploaded, needs to be set to user-specific folder
  #the easiest solution is probably just to do :url => :some_method and in that method return a string that you want
  # has_attached_file :file , :path => ":rails_root/public/:id/tunes/:filename"

  has_attached_file :file,
  # :storage => :s3, 
  # :s3_credentials => "#{Rails.root}/config/s3.yml",
  #:path => "/tunes/#{tune.user.id}/:id_:filename"
  :path => :custom_path
  #:path => "/tunes/:id_:filename"

  def custom_path
    "/tunes/:id_:filename"
  end


end
