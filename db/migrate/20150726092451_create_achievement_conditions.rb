class CreateAchievementConditions < ActiveRecord::Migration
  def change
    create_table :achievement_conditions do |t|
      t.integer 'achievement_id'
    end
  end
end
