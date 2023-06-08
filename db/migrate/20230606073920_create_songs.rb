class CreateSongs < ActiveRecord::Migration[6.1]
  
  def change
    create_table :songs do |t|

      #↓手動で追加↓#
      
      t.integer :user_id
      ## 曲名を保存するカラム
      t.string :name
      ## アーティストを保存するカラム
      t.string :artist
      ## チューニングを保存するカラム
      t.string :tuning
      ## Capoを保存するカラム
      t.integer :capo
      ## BPMを保存するカラム
      t.integer :bpm
      ## 主音(曲のキー)を保存するカラム
      t.string :tonic
      ## コード進行を保存するカラム
      t.text :chord
      ## 合言葉を保存するカラム
      t.string :secret_word
      ## 公開フラグ 真(true)公開/偽(false)非公開
      t.boolean :is_opened, default: false

      #↑手動で追加↑#

      t.timestamps
    end
  end
end
