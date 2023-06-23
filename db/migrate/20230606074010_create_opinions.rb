class CreateOpinions < ActiveRecord::Migration[6.1]
  def change
    create_table :opinions do |t|

      #↓手動で追加↓#
      
      t.integer :user_id
      
      ## ご意見を保存するカラム
      t.text :opinion

      #↑手動で追加↑#

      t.timestamps
    end
  end
end
