require File.dirname(__FILE__) + '/../lib/twolcoaching-scrape'

HIGHLINE = HighLine.new

email = HIGHLINE.ask("2L Coaching Email: ")
password = HIGHLINE.ask("Password: ") { |q| q.echo = false }
outpath = HIGHLINE.ask("Where to put the exported data: ") {|q| q.default = ENV["HOME"] }

session = TwoLCoaching::Scrape::Session.new(email, password, outpath)
session.run