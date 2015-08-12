class AddAnswersToQuestions < ActiveRecord::Migration
  def change
    add_column :questions, :answer1, :text
    add_column :questions, :answer2, :text
    add_column :questions, :answer3, :text
    add_column :questions, :answer4, :text
    add_column :questions, :answer5, :text
    add_column :questions, :answer6, :text
    add_column :questions, :answer7, :text
    add_column :questions, :answer8, :text
  end
end
