class AddCustomerIdToGroups < ActiveRecord::Migration[4.2]
  def change
    add_column :groups, :customer_id, :integer
  end
end
