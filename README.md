# Unexpected Instance Variable Modification in Ruby

This example demonstrates a potential source of confusion in Ruby when dealing with instance variables and setter methods. Direct modification of instance variables using `instance_variable_set` can lead to unexpected behavior if not carefully managed, especially when compared to using explicitly defined setter methods.

The `bug.rb` file showcases the issue. The `bugSolution.rb` provides a solution and best practices to avoid such problems.  The key takeaway is to consistently use accessor methods to maintain class invariants and prevent unintended side effects.