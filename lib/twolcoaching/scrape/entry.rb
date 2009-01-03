module TwoLCoaching
  module Scrape

    class Entry
      def initialize(tr)
        @tds = tr.search('td').to_ary.map {|td| td.text }
      end
      
      def category
        @tds[0]
      end
      
      def date
        @tds[1]
      end
      
      def type
        @tds[2]
      end
      
      def distance
        @tds[3]
      end
      
      def description
        @tds[4]
      end
      
      def notes
        @tds[5]
      end
      
      def to_ary
        [category, date, type, distance, description, notes]
      end
    end

  end
end