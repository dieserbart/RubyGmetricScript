#This is the /etc/init.d/mydaemon file
 
#!/usr/local/bin/bootup_ruby
APP_NAME = 'MyScript'  
APP_PATH = '/my/daemon/file'
case ARGV.first    
  when 'start'  
    puts "Starting #{APP_NAME}..."
    system(APP_PATH, 'start')
  when 'stop'
    system(APP_PATH, 'stop')
  when 'restart'
    system(APP_PATH, 'restart')
end
 
unless %w{start stop restart}.include? ARGV.first
  puts "Usage: #{APP_NAME} {start|stop|restart}"
  exit
end
 
#this is /my/daemon/file
 
#!/usr/local/bin/bootup_ruby
require 'rubygems'
require 'daemons'
Daemons.run('main.rb')
 
#main.rb is the real script