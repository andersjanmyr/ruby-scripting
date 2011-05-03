!SLIDE 
# Basics

    @@@ruby
    # local variable
    name = 'Anders'
    puts name

!SLIDE 
# Class

    @@@ruby
    # class
    class Tapir
    end

!SLIDE 
# Method

    @@@ruby
    # method, optional parenthesis
    def eat food
      puts "I'm eating #{food}"
    end

!SLIDE 
# Instance variable

    @@@ruby
    def save(food)
      # instance variable, created on assignment
      @food = food
    end

!SLIDE
# String

    @@@ruby
    # Double quotes string support interpolation
    "Hello #{Date.now}"

    # Concatenation is also possible
    "Hello " + name

!SLIDE small
# String Methods

    @@@ruby
    str = 'Tapir'
    
    str.upcase                    # TAPIR
    str.gsub(gsub(/[aeiou]/, '*') # T*p*r
    str.include? 'api'            # true
    str.size                      # 5

!SLIDE small
# Array

    @@@ruby
    numbers = [1, 2, 3]

    number.size                 # 3
    numbers << 4                # mutates array[1, 2, 3, 4]
    numbers.pop                 # returns 4 and mutates array into [1,2,3]
    numbers.unshift 0           # mutates array into [0,1,2,3]
    numbers.each { |n| puts n } # prints 0 1 2 3
    numbers.map { |n| n*5}      # returns [0,5,10,15]

!SLIDE small
# Hash

    @@@ruby
    hash = {} #Create a new Hash or Map

    hash['foo'] = 'bar' # Adds key 'foo' with value 'bar'
    hash['foo'] # returns 'bar'
    hash.size                 # 1
    hash['tapir'] = 'beautiful' # Add one more 
    hash.keys # returns ['foo', 'tapir']
    hash.map { |key, value| key+value } # ['foobar', 'tapirbeautiful']





