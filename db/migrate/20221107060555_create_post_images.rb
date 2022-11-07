class CreatePostImages < ActiveRecord::Migration[6.1]
  def change
    create_table :post_images do |t|

      # アプリケーションを完成させよう2＞8章＞
      # モデル・テーブルの作成
      # t.integer :id
      t.string :shop_name
      t.text :caption
      t.integer :user_id
      t.timestamps
    end
  end
end
