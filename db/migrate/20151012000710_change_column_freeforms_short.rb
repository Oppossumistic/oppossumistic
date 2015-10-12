class ChangeColumnFreeformsShort < ActiveRecord::Migration
  def change
    change_column :freeforms, :short, :boolean, default: true
  end
end
