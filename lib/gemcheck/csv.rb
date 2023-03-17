require "csv"

module Gemcheck
  class Csv < Formatter
    def convert
      text = CSV.generate(force_quotes: true) do |csv|
        csv << @columns
        @outdated_gems.each do |gem|
          csv << gem.values
        end
      end
      text.chomp
    end
  end
end