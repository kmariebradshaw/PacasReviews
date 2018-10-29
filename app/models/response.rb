class Response < ApplicationRecord
  belongs_to :answer

  def self.upvote 
    self.vote += 1 
  end 
end
