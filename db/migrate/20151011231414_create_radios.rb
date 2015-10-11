class CreateRadios < ActiveRecord::Migration
  def change
    create_table :radios do |t|

      t.timestamps null: false
    end
  end
end
