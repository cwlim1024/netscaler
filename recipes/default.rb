#
# Author:: Daptiv Engineering (<dl_teamengineering@daptiv.com>)
# Cookbook Name:: netscaler
# Recipe:: default
#
# Copyright (c) 2014 Daptiv Solutions LLC.
#
# All rights reserved - Do Not Redistribute
#

# New netscaler instance
netscalers = search(:node, "role:netscaler AND chef_environment:#{node.chef_environment}"
netscaler_ips = netscalers.map { |n| n['ipaddress'] }
ns = Netscaler::Utilities.new(
  :hostname => netscaler_ips,
  :username => 'iamgroot',
  :password => 'iamgroot'
)


# Logout of the netscaler
ns.logout