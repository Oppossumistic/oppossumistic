class CreateJoinTable < ActiveRecord::Migration
  def change
    create_join_table :questions, :answers do |t|
      # t.index [:question_id, :answer_id]
      t.index [:answer_id, :question_id]
    end
  end
end
