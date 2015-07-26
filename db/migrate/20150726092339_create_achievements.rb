class CreateAchievements < ActiveRecord::Migration
  def change
    create_table :achievements do |t|
      t.string :title
    end
  end
end
