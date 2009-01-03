module TwoLCoaching
  module Scrape
    TABLE_VIEW_XPATH = "/html/body/table[8]/tr/td/table[1]/tr"
    
    class TableView
      def initialize(table_view_page)
        @page = table_view_page
      end
      
      def entries        
        @entries ||= @page.root.search(TABLE_VIEW_XPATH).to_ary[2..-1].map do |tr|
          Entry.new(tr)
        end
      end
      
      def entries=(new_entries)
        @entries = new_entries
      end
      
      def +(table_view)
        self.entries += table_view.entries
        self
      end
      
      def to_csv
        FasterCSV.generate do |csv|
          entries.each { |entry| csv << entry.to_ary }
        end
      end
      alias :to_s :to_csv
    end
    
  end
end

  