class CreateConditions < ActiveRecord::Migration
  def change
    create_table :conditions do |t|
      t.integer  "actable_id"
      t.string   "actable_type"
      t.integer  "conditional_id"
      t.string   "conditional_type"
    end
  end
end
