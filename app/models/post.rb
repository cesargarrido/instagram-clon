class Post < ApplicationRecord
  belongs_to :user
  has_many :comments, dependent: :destroy
  has_one_attached :image

  def squared_img
    if image.attached?
      image.variant(combine_options: { resize: '600x600^', gravity: 'center', extent: '600x600' })
    end
  end
end
