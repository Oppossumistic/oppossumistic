class CreateTrueleans < ActiveRecord::Migration
  def change
    create_table :trueleans do |t|

      t.timestamps null: false
    end
  end
end
