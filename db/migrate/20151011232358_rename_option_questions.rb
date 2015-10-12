class RenameOptionQuestions < ActiveRecord::Migration
  def change
    rename_table :options_questions, :option_groups
    rename_column :options, :options_questions_id, :option_group_id
  end
end
