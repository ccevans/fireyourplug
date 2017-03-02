class AddQuestionTwoToPosts < ActiveRecord::Migration
  def change
    add_column :posts, :question_two, :string
  end
end
