class Post < ApplicationRecord
	validates_presence_of :body, :title
	has_many :comments

end

