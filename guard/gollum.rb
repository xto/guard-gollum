require 'guard'
require 'guard/guard'

module Guard
  class Gollum < Guard
    attr_accessor :pid
    def initialize(watchers = [], options = {})
      super
    end

    def start 
      puts "Wake up. Wake up. Wake up, sleepies. We must go, yeeees, we must go at once."
      `gollum`
      pid = $?.pid
      puts "My Precious!!!!"
    end

    def stop
      `kill -9 #{pid}`
      puts "Oh! Cruel hobbit! It does not care if we be hungry. It does not care if we should die! Not like Master. Master cares. Master knows. Yes, precious..."
    end
  end
end
