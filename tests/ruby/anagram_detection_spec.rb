require_relative '../../solutions/ruby/anagram_detection'

describe 'anagram_detection' do
    specify { expect(anagram_detection('AdnBndAndBdaBn', 'dAn')).to eq(4) }
    specify { expect(anagram_detection('AbrAcadAbRa', 'cAda')).to eq(2) }
    specify { expect(anagram_detection('hello there', 'abc')).to eq(0) }
    specify { expect(anagram_detection('abCdeFghI', 'abc')).to eq(0) }
    specify { expect(anagram_detection('hello', 'llohe')).to eq(1) }
    specify { expect(anagram_detection('abab', 'a')).to eq(2) }
end