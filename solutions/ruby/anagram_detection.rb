# encoding: utf-8

# return how many times child_string or anagram of child string appears in parent_string
def anagram_detection(parent, child)
  window_length = child.length
  ctr = 0
  0.upto(parent.length - window_length).each do |idx|
    sub_str = parent[idx...(idx + window_length)]
    ctr += 1 if anagrams?(child, sub_str)
  end
  
  ctr
end

def anagrams?(str1, str2)
  hash_map = Hash.new(0)
  str1.each_char { |char| hash_map[char] += 1 }
  str2.each_char do |char|
    return false unless hash_map[char]
    hash_map[char] -= 1
    return false if hash_map[char] < 0
  end

  true
end