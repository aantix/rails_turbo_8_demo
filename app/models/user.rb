class User < ApplicationRecord
  has_many :blogs, -> { order('created_at desc') }
  broadcasts_refreshes
end
