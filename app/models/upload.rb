class Upload < ActiveRecord::Base
  attr_accessible :file, :name
  mount_uploader :file, FileUploader
end
