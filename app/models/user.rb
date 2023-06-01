class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable,
         :confirmable
  has_many :comments
  has_many :likes
  has_many :posts, foreign_key: 'author_id'

  validates :name, presence: true
  validates :posts_count, numericality: { only_integer: true, greater_than_or_equal_to: 0 }, allow_nil: true

  def three_last_posts
    posts.last(3)
  end
end
