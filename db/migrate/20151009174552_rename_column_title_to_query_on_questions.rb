class RenameColumnTitleToQueryOnQuestions < ActiveRecord::Migration
  def change
    rename_column :questions, :title, :query
  end
end
