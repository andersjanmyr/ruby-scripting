!SLIDE code
# A basic script

    @@@ Ruby
    #!/usr/bin/env ruby
    # one.rb

    puts ARGV

!SLIDE commandline
# Calling the script

    $ chmod a+x one.rb
    $ ./one.rb kalle -o ville -p
    kalle
    -o
    ville
    -p

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

!SLIDE small
# if else end

    @@@ruby
    if ARGV.length > 0
      puts "We have #{ARGV.size} arguments"
    end

    # Statement modifier goes at the end
    return "We have #{ARGV.size} arguments" if ARGV.length > 0
     
    if ARGV.length > 0
      puts "We have #{ARGV.size} arguments"
    else
      puts 'We have no arguments'
    end

!SLIDE small
# Blocks (anonymous functions)

    @@@ruby
    # prints x : 0 x : 1 x : 2 x : 3 x : 4
    5.times { |x|  puts "x: #{x}"  }

    #=> ["EN", "GLAD", "TAPIR"]
    %w(en glad tapir).map do |word|
      word.toUpper
    end
    


