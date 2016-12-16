class User < ActiveRecord::Base
	has_many :messages
	has_many :posts 
	has_many :owners
	has_many :blogs, :through => :owners
	has_many :post, :through => :blogs
	has_many :comments, as: :table

end
