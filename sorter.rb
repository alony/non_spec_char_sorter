class Sorter
  class << self
    def sort(unsorted)
      sorted_literal = unsorted.sort { |c1, c2| compare(c1, c2) }

      unsorted.map do |char|
        is_literal?(char) ? sorted_literal.shift : char
      end
    end

    private
    def compare(c1, c2)
      return 1 unless is_literal?(c1)
      return -1 unless is_literal? (c2)
      c1.to_s <=> c2.to_s
    end

    def is_literal?(char)
      char.to_s =~ /[[:alnum:]]/
    end
  end
end
