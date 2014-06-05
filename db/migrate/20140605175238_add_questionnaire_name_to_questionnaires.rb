class AddQuestionnaireNameToQuestionnaires < ActiveRecord::Migration
  def change
    add_column :questionnaires, :questionnaire_name, :text
  end
end
