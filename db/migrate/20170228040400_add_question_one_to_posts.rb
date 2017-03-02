class AddQuestionOneToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :question_one, :string
  end
end
