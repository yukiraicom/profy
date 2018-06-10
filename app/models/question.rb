class Question < ApplicationRecord
  #association
  belongs_to :user
  belongs_to :group
  has_many :answers

  #validation
  validates_presence_of :user_id, :text, :group_id
end
