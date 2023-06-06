class CreateGenres < ActiveRecord::Migration[6.1]
  def change
    create_table :genres do |t|

      #↓手動で追加↓#

      ## ジャンル名を保存するカラム
      t.string :name

      #↑手動で追加↑#

      t.timestamps
    end
  end
end
