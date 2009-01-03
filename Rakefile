require 'rubygems'
require 'rstack'
require File.join(File.dirname(__FILE__), 'lib', 'twolcoaching', 'scrape', 'version')

RStack::Configuration.new 'twolcoaching-scrape' do |config|
  config.summary  = "Scrapes log entries from 2LCoaching since they can't manage to offer an export"
  config.author   = 'jrun'
  config.email    = 'jeremy.burks@gmail.com'
  config.url      = '[ENTER A PROJECT URL]'
  config.version  = TwoLCoaching::Scrape::Version::STRING
  
  config.dependencies['highline'] = '= 1.4.0'
  config.dependencies['mechanize'] = '= 0.9.0'
  config.dependencies['fastercsv'] = '= 1.4.0'
  
  config.executables << 'twolcoaching-scrape'
end

