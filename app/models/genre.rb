class Genre < ApplicationRecord
  
  has_many :song
  
  validates :name, presence: true
  
end
