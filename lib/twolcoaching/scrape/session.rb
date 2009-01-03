module TwoLCoaching
  module Scrape
    LOGIN_URL = "http://www.2lcoaching.com/members/login.asp"
    
    class Session
      def initialize(email, password)
        @agent, @email, @password = WWW::Mechanize.new, email, password
        login
      end
      
      def login
        login_form = @agent.get(LOGIN_URL).forms.first
        login_form['EMail'] = @email
        login_form['Password'] = @password
        login_form.submit
      end
    end
    
  end
end