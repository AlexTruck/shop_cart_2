class Admin::Discount < ActiveRecord::Base
  has_and_belongs_to_many :products

  validates_presence_of :title, :description, :amount, :started_at, :ended_at
end