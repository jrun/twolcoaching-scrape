module TwoLCoaching
  module Scrape
    LOGIN_URL = "http://www.2lcoaching.com/members/login.asp"
    
    class Session
      def initialize(email, password, outpath)
        @email, @password, @outpath = email, password, outpath
        @agent = WWW::Mechanize.new
      end
      
      def run
        default_page = login
        table_view_page = default_page.links.find do |link| 
          link.text == "Print View" 
        end.click

        HIGHLINE.say "reading page 1..."
        table_view = TableView.new(table_view_page)
        
        Paging.new(table_view_page).each_page_href do |href|
          HIGHLINE.say "reading page '#{href}'..."
          table_view += TableView.new(@agent.get(href))
        end
        File.open(export_file, 'w') do |f|
          f.write table_view
        end
        HIGHLINE.say "file written to '#{export_file}'..."
      end
      
      def login
        login_form = @agent.get(LOGIN_URL).forms.first
        login_form['EMail'] = @email
        login_form['Password'] = @password
        login_form.submit
      end
      
      def export_file
        File.join(@outpath, "2lcoaching-export-#{Time.now.strftime('%Y%m%d-%H%M%S')}.csv")
      end
    end
    
  end
end