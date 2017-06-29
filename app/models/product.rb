class Product < ApplicationRecord
  # has_many :comments, dependent: :destroy
  # has_many :order_items

  # before_destroy :ensure_not_referenced

  validates :sku, :title, :description, :price, presence: true
  validates :price, numericality: { greater_than_or_equal_to:  0.01 }
  validates :title, uniqueness: true
  validates :image, allow_blank: true, format: {
    with: %r{\.(gif|jpg|png)\Z}i,
    message: 'URL should reference to the image'
  }

  def to_s
    title
  end

  private

  def ensure_not_referenced

  end
end
