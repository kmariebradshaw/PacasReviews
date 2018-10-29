class Question < ApplicationRecord
  has_many :answers
  has_many :responses, through: :answers

end
