require 'guard'
require 'guard/guard'

module Guard
  class Gollum < Guard
    def initialize(watchers = [], options = {})
      super
    end

    def start 
      puts "Wake up. Wake up. Wake up, sleepies. We must go, yeeees, we must go at once."
      @pid= fork {exec "gollum > /dev/null 2>1"}
      Process.detach(@pid)
      puts "My Precious!!!!"
    end

    def stop
      Process.kill("INT", @pid)
      puts "Oh! Cruel hobbit!"
    end
  end
end
