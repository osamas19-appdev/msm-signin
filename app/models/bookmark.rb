class Bookmark < ApplicationRecord
  belongs_to(:movie, { :required => true, :class_name => "Movie", :foreign_key => "movie_id" })
  belongs_to(:user, { :required => true, :class_name => "User", :foreign_key => "user_id" })
end
