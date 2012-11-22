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
app_name = 'rubyboot_gmetric_dtest.rb'purge
app_dir = '/etc/init.d/'
case ARGV.first

 if ['stop', 'restart'].include? ARGV.first
#apps.each do |path, port|
path = File.join app_dir, path
puts "Stopping /var/lib/gmetric/gmetric_gpu.rb"
`gmetric stop`
end
end

if ['start', 'restart'].include? ARGV.first
#apps.each do |path, port|
path = File.join app_dir, path
puts "Starting /var/lib/gmetric/gmetric_gpu.rb"
`gmetric start`
end
end

unless ['start', 'stop', 'restart'].include? ARGV.first
puts "Usage: gmetric {start|stop|restart}"
exit

end