class DeleteEverything < ActiveRecord::Migration
  def change
    drop_table :dropdowns
    remove_column :freeforms, :answer_id
    rename_column :options, :question_id, :options_questions_id
    remove_column :options, :answer_id
    remove_column :options, :selected
    rename_column :options, :radio, :type
    remove_column :options, :allow_other
    remove_column :options, :other
    drop_table :answers_questions
  end
end
