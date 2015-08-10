class Admin::Discount < ActiveRecord::Base
  has_and_belongs_to_many :products

  validates_presence_of :title, :description, :amount, :started_at, :ended_at
  validates :variant, presence: true, inclusion: { in: %w(% uah) }
end