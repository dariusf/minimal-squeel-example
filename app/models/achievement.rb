class Achievement < ActiveRecord::Base
  has_many :conditions, -> { includes :actable },
           class_name: Condition.name, as: :conditional, dependent: :destroy
end
