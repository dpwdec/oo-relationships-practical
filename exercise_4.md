Example from the `irb` of how to use `ScrambledDiary` with polymorphic behavior.

```
2.7.0 :001 > require './exercise_4.rb'
 => true
2.7.0 :002 > diary = ScrambledDiary.new("I love Ryan.")
2.7.0 :003 > diary.read
 => "I love Ryan."
2.7.0 :004 > diary.scramble(Reverser.new)
 => ".nayR evol I"
2.7.0 :005 > diary.unscramble(Reverser.new)
 => "I love Ryan."
2.7.0 :006 > diary.scramble(Advancer.new(5))
 => "N%qt{j%W~fs3"
2.7.0 :007 > diary.unscramble(Advancer.new(5))
 => "I love Ryan."
2.7.0 :008 >
```
