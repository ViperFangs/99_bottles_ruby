# frozen_string_literal: true

require_relative '../lib/bottles'

describe Bottles do
  describe '#verse' do
    context 'Unit testing to check if #verses returns a specified verse' do
      subject(:bottles) { described_class.new }

      it 'returns the 99th verse' do
        verse_99_result = '99 bottles of beer on the wall, ' +
                          "99 bottles of beer.\n" +
                          'Take one down and pass it around, ' +
                          "98 bottles of beer on the wall.\n"

        expect(bottles.verse(99)).to eq verse_99_result
      end

      it 'returns the 98th verse' do
        verse_98_result = '98 bottles of beer on the wall, ' +
                          "98 bottles of beer.\n" +
                          'Take one down and pass it around, ' +
                          "97 bottles of beer on the wall.\n"

        expect(bottles.verse(98)).to eq verse_98_result
      end
    end
  end
end
