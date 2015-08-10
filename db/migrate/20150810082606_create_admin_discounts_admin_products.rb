class CreateAdminDiscountsAdminProducts < ActiveRecord::Migration
  def change
    create_table :admin_discounts_admin_products do |t|
      t.references :admin_discounts, index: true, foreign_key: true
      t.references :admin_products, index: true, foreign_key: true
    end
  end
end