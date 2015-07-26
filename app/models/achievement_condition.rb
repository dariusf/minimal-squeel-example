class AchievementCondition < ActiveRecord::Base
  acts_as :condition, class_name: Condition.name
  belongs_to :achievement, class_name: Achievement.name

  default_scope { includes(:achievement) }
end
