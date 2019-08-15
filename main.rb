require "colorize"


class Git
  def initialize
    menu 
  end 
def menu
  puts "-- Main Menu --"
  puts "1) Enter git command"
  puts "2) Exit".colorize(:cyan)
  put "> "
  choice = gets.to_i
  case choice
  when 1
    puts "Enter git command:".colorize(:green)
    print ">"
    puts_git(gets.strip)
    menu
  when 2 
    exit 

  else 
    puts "Invalid Input".colorize(:red)
    sleep(2)
    print `clear`
    menu
end
end 


 
def puts_git(cmd)
  puts `git #{cmd} -h`
end

end

Git.new
