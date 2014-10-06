`bundle install --path ./gems`
require 'rubygems'
require 'bundler/setup'

task :default => [:hack, :get_cookbooks, :chef_solo]

task :hack do
	`ruby win_fetch_cacerts.rb`
end

task :get_cookbooks do
	puts `set SSL_CERT_FILE=C:/cacert.pem`
	puts `librarian-chef install`
end

task :chef_solo do 
	puts `chef-solo -c solo.rb`
end