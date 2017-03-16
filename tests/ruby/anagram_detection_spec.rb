require_relative '../../solutions/ruby/anagram_detection'

describe 'anagram_detection' do
    specify { expect(anagram_detection('hello', 'llohe')).to be_truthy }
end