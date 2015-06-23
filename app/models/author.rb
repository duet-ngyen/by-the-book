class Author < ActiveRecord::Base
  has_and_belongs_to_many :books

  mount_uploader :avatar, AvatarAuthorUploader

end
