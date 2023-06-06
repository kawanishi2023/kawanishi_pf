class Song < ApplicationRecord
  
  has_one :genre
  belongs_to :user
  has_many :comments, dependent: :destroy
    
  
end
