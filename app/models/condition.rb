class Condition < ActiveRecord::Base
  actable
  belongs_to :conditional, polymorphic: true
end
