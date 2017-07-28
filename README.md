Challenge is to sort an array but keeping special chars on their position.

```
  # frozen_string_literal: true
  require_relative '../sorter'

  describe Sorter do
    let(:unsorted) { ['q', 'w', 'd', '.', 'a', 'z', '!', '?', 'f', 'g', 'b', '2', 8, 'A'] }

    let(:sorted) { ['2', 8, 'A', '.', 'a', 'b', '!', '?', 'd', 'f', 'g', 'q', 'w', 'z'] }

    it 'sorts an array' do
      expect(described_class.sort(unsorted)).to eq(sorted)
    end

    it 'handles empty arrays' do
      expect(described_class.sort([])).to eq([])
    end
  end
```
