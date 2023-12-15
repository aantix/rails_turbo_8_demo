class User < ApplicationRecord
  has_many :blogs
  broadcasts_refreshes  
end
