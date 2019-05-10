class Post < ApplicationRecord
  belongs_to :user
  validates　:answer, hint01, hint02, hint03,  length: {1..255}

end
