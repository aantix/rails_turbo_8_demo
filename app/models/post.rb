class Post < ApplicationRecord
  belongs_to :blog, touch: true

  broadcasts_refreshes  

  delegate :user, to: :blog

  after_save { user.touch }
end
