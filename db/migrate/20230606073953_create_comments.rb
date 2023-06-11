class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      #↓手動で追加↓#

      ## コメントの投稿者名を保存するカラム
      t.string :name
      ## コメントの文章を保存するカラム
      t.text :comment
      ## 公開フラグ 真(true)非公開/偽(false)公開
      t.boolean :is_deleted, default: false
      ## song ID
      t.integer :song_id
      ## user ID
      t.integer :user_id

      #↑手動で追加↑#

      t.timestamps
    end
  end
end
