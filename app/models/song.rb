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

end
