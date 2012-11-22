#!/usr/bin/env ruby
#
# Startup script for gmetric from Sebastian Gleicher
# description: gmetric is the Ganglia Custom Metric Utility
# rubyboot_gmetric is a /etc/init.d/ start/stop/restart-script for gmetric
# Version Date 15.08.2012
#
# chkconfig: 2345 80 20
#
#!/usr/local/bin/rubyboot_gmetric 
APP_NAME = 'rubyboot_gmetric'

app_dir = '/etc/init.d/'

 if ['stop', 'restart'].include? ARGV.first
apps.each do |path, port|
path = File.join app_dir, path
puts "Stopping #{path}..."
`gmetric stop -c #{path} log/gmetric.pid`
end
end

if ['start', 'restart'].include? ARGV.first
apps.each do |path, port|
path = File.join app_dir, path
puts "Starting #{path} on #{port}..."
`gmetric start -d -p #{port} production -c #{path} log/gmetric.pid`
end
end

unless ['start', 'stop', 'restart'].include? ARGV.first
puts "Usage: gmetric {start|stop|restart}"
exit

end