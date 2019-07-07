class User < ApplicationRecord
	has_many :Articals
	#validates :email,:password , :presence=>true, length: {maximum:25,minimum:3}
end
