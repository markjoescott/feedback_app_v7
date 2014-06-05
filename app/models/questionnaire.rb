class Questionnaire < ActiveRecord::Base

validates(:questionnaire_name, { :presence => true})

belongs_to :user
has_many :respondents
has_many :answers


end
