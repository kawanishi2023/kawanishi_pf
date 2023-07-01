class Song < ApplicationRecord

  belongs_to :genre
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_one_attached :sound_date

  validates :name, presence: true
  validates :artist, presence: true
  validates :is_opened, :inclusion => { :in => [true, false] }

  def self.looks(word)
      @song = Song.where("secret_word LIKE?","#{word}")
  end
  
  
  def self.looks(search, retrieval)
    if search == "perfect_match"
      @song = Song.where("name LIKE?", "#{retrieval}")
    elsif search == "forward_match"
      @song = Song.where("name LIKE?","#{retrieval}%")
    elsif search == "backward_match"
      @song = Song.where("name LIKE?","%#{retrieval}")
    elsif search == "partial_match"
      @song = Song.where("name LIKE?","%#{retrieval}%")
    else
      @song = Song.all
    end
  end
  
  
end
