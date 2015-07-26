
# Minimal example

The following will create two achievments, with achievement 2 having
achievement 1 as a condition, when run in irb:

```ruby
Achievement.new.tap do |a|
  a.id = 1
  a.title = 'one'
end.save
Achievement.new.tap do |a|
  a.id = 2
  a.title = 'two'
end.save
Condition.new.tap do |c|
  c.id = 1
  c.actable_id = 1
  c.actable_type = 'AchievementCondition'
  c.conditional_id = 2
  c.conditional_type = 'Achievement'
end.save
AchievementCondition.new.tap do |a|
  a.id = 1
  a.achievement_id = 1
end.save
```

