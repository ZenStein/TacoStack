class Answer < ActiveRecord::Base
  belongs_to :question
  has_many :comments
  has_many :votes
end
