#! /usr/bin/ruby
# ls -al ./first_program.rb
# UGW (user, group, world)
# chmod u+x ./first_program.rb

lines = []

File.open(ARGV.first, "r") do |file|
  file.each_line do |line|
    lines << line # lines.push line
  end
end

lines.reverse!
lines.each do |line|
  puts line.reverse
end
