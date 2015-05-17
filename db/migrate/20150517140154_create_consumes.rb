class CreateConsumes < ActiveRecord::Migration
  def change
    create_table :consumes do |t|
      t.string :name
      t.integer :cost
      t.string :kind

      t.timestamps null: false
    end
  end
end
