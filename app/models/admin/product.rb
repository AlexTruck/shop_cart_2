class Admin::Product < ActiveRecord::Base
  has_and_belongs_to_many :discounts

  validates_presence_of :title, :category, :price

  def discount_product
    @admin_products.each_with_index do |product, index|
      if (index + 1) % @admin_discount.step == 0
        if @discount.variant == '%'
          product.price * (@admin_discount.amount / 100)
        else
          product.price - @admin_discount
        end
      end
    end
  end
end