class Song < ApplicationRecord
  
  has_one :genre
  belongs_to :user
  has_many :comments, dependent: :destroy
    
  has_one_attached :sound_date
  
  def self.looks(word)
      @song = Song.where("secret_word LIKE?","#{word}")
  end
  
end
