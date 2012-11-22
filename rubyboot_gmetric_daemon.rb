#!/usr/bin/env ruby
#
# Startup script for gmetric from Sebastian Gleicher
# description: gmetric is the Ganglia Custom Metric Utility
# rubyboot_gmetric_daemon.rb is a start-script for gmetric-daemon
# Version Date 15.08.2012
#
# Default-Start:     2 3 4 5
# Default-Stop:      0 1 6
#
# chkconfig: 2345 80 20
#
#!/usr/local/bin/gmetric_gpu.rb_controller 


require 'daemons'

options = {
  :dir_mode   => :system,
  :monitor   => true
}

Daemons.run('/var/lib/gmetric/gmetric_gpu.rb',options)