class CreateRespondents < ActiveRecord::Migration
  def change
    create_table :respondents do |t|
      t.integer :questionnaire_id
      t.string :respondent_email
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      t.integer :course_id
      t.integer :user_id

      t.timestamps

    end
  end
end
