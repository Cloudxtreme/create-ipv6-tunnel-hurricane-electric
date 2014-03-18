#!/bin/bash
#----------AUTHOR------------
	# Jacob Salmela
	# 19 October 2013
	# https://github.com/jakesalmela/

#---------RESOURCES----------
	# http://ipv6.he.net

#---------DESCRIPTION--------
	# Automatically creates the IPv6 tunnel for use with HE IPv6 Certification	

#-----------USAGE------------
	#
	#	sudo ./create-ipv6-tunnel.sh <local_IPv4_address> <server_IPv4_address> <client_IPv6_address> <server_IPv6_address>
	#
	
#----------FUNCTIONS---------
#####################################
function createTunnelUsingArguments()
	{
	# Create gif interface
	sudo ifconfig gif0 create
	
	# $1 is your local IP (use private IP if your router supports Protocol 41 passthrough, otherwise, use external)
	# $2 is the server (Hurricane Electric) IPv4 address 	
	sudo ifconfig gif0 tunnel $1 $2
	
	# $3 is client IPv6 address
	# $4 is the server (Hurricane Electric) IPv6 address
	sudo ifconfig gif0 inet6 $3 $4 prefixlen 128
	
	# Set the default route for IPv6 traffic to go through Hurricane Electric's servers
	sudo route -n add -inet6 default $4
	}

####################################
function createTunnelInteractively()
	{
	# Future feature
	} 
#----------------------------
#----------------------------
#-----------SCRIPT-----------
#----------------------------
#----------------------------
createTunnelUsingArguments
#createTunnelInteractively

