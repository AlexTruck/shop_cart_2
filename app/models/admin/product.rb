class Admin::Product < ActiveRecord::Base
  has_and_belongs_to_many :discounts

  validates_presence_of :title, :category, :price
end