module TwoLCoaching
  module Scrape

    class Paging
      XPATH = "/html/body/table[8]/tr/td/table[2]/tr/td/a"
      
      def initialize(table_view_page)
        @page = table_view_page
      end
      
      def each_page_href
        @page.root.xpath(XPATH).to_ary.each do |a|       
          yield a['href']
        end
      end
    end
    
  end
end