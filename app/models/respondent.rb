class Respondent < ActiveRecord::Base

validates(:respondent_email, { :presence => true})

belongs_to :questionnaire
belongs_to :user
has_many  :answers

end
