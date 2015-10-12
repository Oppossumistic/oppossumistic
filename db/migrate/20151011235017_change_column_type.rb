class ChangeColumnType < ActiveRecord::Migration
  def change
    change_column :options, :type, :string
  end
end
