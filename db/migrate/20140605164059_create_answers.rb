class CreateAnswers < ActiveRecord::Migration
  def change
    create_table :answers do |t|
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      t.integer :questionnaire_id
      t.integer :respondent_id
      t.text :comment

      t.timestamps

    end
  end
end
