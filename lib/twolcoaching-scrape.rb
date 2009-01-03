$:.unshift File.expand_path(File.dirname(__FILE__))

require 'rubygems'
require 'highline'
require 'mechanize'
require 'fastercsv'

HIGHLINE = HighLine.new

require 'twolcoaching/scrape/entry'
require 'twolcoaching/scrape/table_view'
require 'twolcoaching/scrape/paging'
require 'twolcoaching/scrape/session'
