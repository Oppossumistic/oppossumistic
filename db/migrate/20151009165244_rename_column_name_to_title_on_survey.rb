class RenameColumnNameToTitleOnSurvey < ActiveRecord::Migration
  def change
    rename_column :surveys, :name, :title
  end
end
