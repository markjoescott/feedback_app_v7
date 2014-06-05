class Questionnaire < ActiveRecord::Base

belongs_to :user
has_many :respondents
has_many :answers

end
