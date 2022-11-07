class PostImage < ApplicationRecord
  # アプリケーションを完成させよう2＞8章＞
  # モデルにimageを持たせる
  has_one_attached :image
end
