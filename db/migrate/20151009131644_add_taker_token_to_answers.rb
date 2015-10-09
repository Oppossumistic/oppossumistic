class AddTakerTokenToAnswers < ActiveRecord::Migration
  def change
    add_column :answers, :taker_token, :string
  end
end
