class Answer < ActiveRecord::Base

validates(:answer_1, { :presence => true})
validates(:answer_2, { :presence => true})
validates(:answer_3, { :presence => true})
validates(:answer_4, { :presence => true})
validates(:answer_5, { :presence => true})

validates(:answer_1, { :numericality => {:less_than_or_equal_to => 4}})
validates(:answer_2, { :numericality => {:less_than_or_equal_to => 4}})
validates(:answer_3, { :numericality => {:less_than_or_equal_to => 4}})
validates(:answer_4, { :numericality => {:less_than_or_equal_to => 4}})
validates(:answer_5, { :numericality => {:less_than_or_equal_to => 4}})

validates(:answer_1, { :numericality => {:greater_than_or_equal_to => 0}})
validates(:answer_2, { :numericality => {:greater_than_or_equal_to => 0}})
validates(:answer_3, { :numericality => {:greater_than_or_equal_to => 0}})
validates(:answer_4, { :numericality => {:greater_than_or_equal_to => 0}})
validates(:answer_5, { :numericality => {:greater_than_or_equal_to => 0}})

validates(:answer_1, { :numericality => :only_integer})
validates(:answer_2, { :numericality => :only_integer})
validates(:answer_3, { :numericality => :only_integer})
validates(:answer_4, { :numericality => :only_integer})
validates(:answer_5, { :numericality => :only_integer})

belongs_to :questionnaire
belongs_to :user
has_many :respondents



end
