class AddAccountIdToConsumes < ActiveRecord::Migration
  def change
    add_column :consumes, :account_id, :integer
  end
end
