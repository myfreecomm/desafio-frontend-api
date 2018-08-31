class CreateCustomers < ActiveRecord::Migration[5.2]
  def change
    create_table :customers do |t|
      t.string :name
      t.string :email
      t.string :phone
      t.string :status
      t.float :subscription_amount
      t.string :profile_url

      t.timestamps
    end
  end
end
