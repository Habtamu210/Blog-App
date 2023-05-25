class Like < ApplicationRecord
  belongs_to :author, class_name: 'User', foreign_key: :author_id
  belongs_to :post, class_name: 'Post', foreign_key: :post_id

  after_save :update_likes_counter

  validates :author_id, presence: true
  validates :post_id, presence: true

  private

  def update_likes_counter
    post.update(likes_counter: post.likes.count)
  end
end
