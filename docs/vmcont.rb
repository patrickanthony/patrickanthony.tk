#!/usr/bin/env ruby
# vmcont.rb
servername = ARGV[1]
case ARGV[0]
when "start"
  `VBoxManage startvm #{servername} --type headless`
when "stop"
`VBoxManage controlvm #{servername} poweroff`
when "reset"
`VBoxManage controlvm #{servername} reset`
else
  STDOUT.puts <<-EOF
  usage:
  vmcont.rb SERVERNAME start|stop|reset
  EOF
end

=begin
Usage: ./vmcont.rb <servername> <start/stop/reset >
=end

=begin
TODO
List Running VMs
List all VMs
=end


