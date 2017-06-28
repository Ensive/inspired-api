class Product < ApplicationRecord
  # has_many :comments, dependent: :destroy
  # has_many :order_items

  # before_destroy :ensure_not_referenced

  def to_s
    title
  end

  private

  def ensure_not_referenced

  end
end
