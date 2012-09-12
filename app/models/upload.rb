class Upload < ActiveRecord::Base
  attr_accessible :file, :name
  mount_uploader :file, FileUploader
  validates :name, :file, presence: true
end
