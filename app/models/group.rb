class Group < ApplicationRecord
  #association
  has_many :users
  has_many :questions, ->{ order("created_at DESC") }
  has_one :feed_content, as: :content, dependent: :destroy
end
