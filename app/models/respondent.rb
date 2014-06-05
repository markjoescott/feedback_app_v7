class Respondent < ActiveRecord::Base

belongs_to :questionnaire
belongs_to :user
has_many  :answers

end
