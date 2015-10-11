class CreateCheckboxes < ActiveRecord::Migration
  def change
    create_table :checkboxes do |t|

      t.timestamps null: false
    end
  end
end
