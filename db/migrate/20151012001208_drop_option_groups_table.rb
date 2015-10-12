class DropOptionGroupsTable < ActiveRecord::Migration
  def change
    drop_table :option_questions
  end
end
