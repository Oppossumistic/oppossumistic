class RemoveAnswerFromFreeforms < ActiveRecord::Migration
  def change
    remove_column :freeforms, :answer
  end
end
