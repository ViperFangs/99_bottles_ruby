# frozen_string_literal: true

require_relative '../lib/bottles'

describe Bottles do
  describe '#verse' do
    context 'Unit testing to check if #verses returns a specified verse' do
      subject(:verse) { described_class.new.verse(99) }

      it 'returns the 99th verse' do
        verse_99_result = '99 bottles of beer on the wall, ' +
                          "99 bottles of beer.\n" +
                          'Take one down and pass it around, ' +
                          "98 bottles of beer on the wall.\n"

        expect(verse).to eq verse_99_result
      end
    end
  end
end
