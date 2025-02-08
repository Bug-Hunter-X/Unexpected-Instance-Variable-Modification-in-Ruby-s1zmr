```ruby
class MyClass
  def initialize(value)
    @value = value
  end

  def value
    @value
  end
end

my_object = MyClass.new(10)
puts my_object.value # => 10

my_object.instance_variable_set(:@value, 20) # Modifying the instance variable directly
puts my_object.value # => 20

#Unexpected behavior when using a setter method
class MyClass
  attr_reader :value

  def initialize(value)
    @value = value
  end

  def value=(new_value)
    @value = new_value * 2 # Unexpected modification
  end
end

my_object = MyClass.new(10)
my_object.value = 15
puts my_object.value # => 30 (Unexpected)
```