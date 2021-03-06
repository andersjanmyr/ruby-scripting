#!/usr/bin/env ruby
# Author: Anders Janmyr
require 'rubygems'
require 'optparse'
require 'ostruct'

# This is the name of the script that is called
PROGRAM_NAME = $0
PROGRAM_VERSION = 1.0

# Create an OpenStruct to save the options.
def options
  @options ||= OpenStruct.new
end


def default_options
  [
          # The values of the array are,
  # [long_option, short_option and parameter, description, code to execute]
  ['--verbose', '-v', "Log to standard output.",
   lambda { |value| options.verbose = true }
  ],
  ['--version', '-V', "Display the program version.",
   lambda { |value|
     puts "#{program_name}, version #{PROGRAM_VERSION}"
     exit
   }
  ]
  ]
end

# This is the options of the program, see OptionParser
# http://ruby-doc.org/stdlib/libdoc/optparse/rdoc/classes/OptionParser.html
def program_options
  [
    ]
end


option_parser = OptionParser.new do |opts|
  opts.banner = "#{PROGRAM_NAME} [options] file..."
  opts.separator ""
  opts.separator "Options are ..."

  # Add the command on_tail, to make it appear as the last option in the list.
  opts.on_tail("-h", "--help", "-H", "Display this help message.") do
    puts opts
    exit
  end

  default_options.each { |args| opts.on(*args) }
  program_options.each { |args| opts.on(*args) }
end

begin
  # Parse the options and remove them from the ARGV array
  option_parser.parse!
rescue OptionParser::ParseError => error
  puts error.message
  puts option_parser
  exit
end


# Only the non options (the filenames) are left in ARGV
ARGV.each do|f|
  puts "Parsing file #{f}..." if options.verbose
end
