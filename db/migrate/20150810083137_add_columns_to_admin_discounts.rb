class AddColumnsToAdminDiscounts < ActiveRecord::Migration
  def change
    add_column :admin_discounts, :step, :integer
    add_column :admin_discounts, :discounted_product, :string
  end
end
