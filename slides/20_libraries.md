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
    # Double quoted string support interpolation
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
    hash = {}                           # Create a new Hash or Map

    hash['foo'] = 'bar'                 # Adds key 'foo' with value 'bar'
    hash['foo']                         # returns 'bar'
    hash.size                           # 1
    hash['tapir'] = 'beautiful'         # Add one more
    hash.keys                           # returns ['foo', 'tapir']
    hash.map { |key, value| key+value } # ['foobar', 'tapirbeautiful']


!SLIDE small
# Pathname

    @@@ruby
    require 'pathname'
    Pathname.getwd             # => #<Pathname:/Users/andersjanmyr/Presentations/ruby-scripting/src>
    p1  = Pathname.new('/tmp') # => #<Pathname:/tmp>
    p1.directory?              # => true
    p2 = p1 + 'anders.txt'     # => #<Pathname:/tmp/anders.txt>
    p2.dirname                 # => #<Pathname:/tmp>
    p2.basename                # => #<Pathname:anders.txt>
    p2.extname                 # => ".txt"
    p2.mkpath                  # Creates the file unless it exists
    p1.find { |f| p f.basename}# => #<Pathname:src> #<Pathname:one.rb> #<Pathname:read_char.rb>


!SLIDE small
# Pathname

    @@@ruby
    path = Pathname.getwd + 'read_char.rb'

    # Opens file, yields each line, then closes it
    path.each_line do |line|
      p line if line =~ /print/
    end
    
    # "print \"Character please=>\"\n"
    # "print \"\\nYou pressed >\", int, \"<, char >\", int.chr, \"<\\n\"\n"

!SLIDE small
# FileUtils

    @@@ruby
    require 'fileutils'
    cd(dir, options)
    pwd()
    mkdir_p(dir, options)
    rmdir(dir, options)
    ln(old, new, options)
    ln_s(old, new, options)
    cp(src, dest, options)
    cp_r(src, dest, options)
    mv(src, dest, options)
    rm(list, options)
    rm_r(list, options)
    rm_rf(list, options)
    chmod(mode, list, options)
    chown(user, group, list, options)
    touch(list, options)
    
!SLIDE small execute
# Executing commands

    @@@ruby
    # system, executes command and returns true on success
    # Output is not captured
    system('ls -f')

    # backticks, executes command and captures stdout as string
    `ls -f` 

!SLIDE small
# OptionParser

    @@@ruby
    # example.rb
    require 'optparse'

    options = {}
    OptionParser.new do |opts|
      opts.banner = "Usage: example.rb [options]"

      opts.on("-v", "--[no-]verbose", "Run verbosely") do |v|
        options[:verbose] = v
      end
    end.parse!

    p options
    p ARGV



