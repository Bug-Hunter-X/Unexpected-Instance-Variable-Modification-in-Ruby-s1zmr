```ruby
#Improved Class Design
class MyClass
  attr_accessor :value # Use attr_accessor for both getter and setter

  def initialize(value)
    @value = value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.value = 15 # Using the setter method
puts my_object.value # => 15

#Alternative solution using attr_reader and a carefully defined setter for more control
class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def value=(new_value)
    @value = new_value # Assign directly without modification
  end
end

my_object = MyClass.new(10)
my_object.value = 15
puts my_object.value # => 15
```