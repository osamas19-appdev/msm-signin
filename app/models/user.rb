class User < ApplicationRecord
  validates :email, :uniqueness => { :case_sensitive => false }
  validates :email, :presence => true
  has_secure_password

  has_many(:bookmarks, { :class_name => "Bookmark", :foreign_key => "user_id", :dependent => :destroy })
  has_many(:movies, { :through => :bookmarks, :source => :movie })
end
