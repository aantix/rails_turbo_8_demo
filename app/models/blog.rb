class Blog < ApplicationRecord
  has_many :posts, dependent: :destroy
  belongs_to :user, touch: true
  broadcasts_refreshes  	
end
