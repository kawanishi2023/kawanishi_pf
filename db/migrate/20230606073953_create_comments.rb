class CreateComments < ActiveRecord::Migration[6.1]
  def change
    create_table :comments do |t|

      #↓手動で追加↓#

      ## コメントの投稿者名を保存するカラム
      t.string :name
      ## コメントの文章を保存するカラム
      t.text :comment
      ## 公開フラグ 真(true)公開/偽(false)非公開
      t.boolean :is_deleted, default: false

      #↑手動で追加↑#

      t.timestamps
    end
  end
end
