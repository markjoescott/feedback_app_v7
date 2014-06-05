class CreateQuestionnaires < ActiveRecord::Migration
  def change
    create_table :questionnaires do |t|
      t.integer :answer_1
      t.integer :answer_2
      t.integer :answer_3
      t.integer :answer_4
      t.integer :answer_5
      t.integer :course_id
      t.integer :user_id
      t.integer :respondent_id

      t.timestamps

    end
  end
end
