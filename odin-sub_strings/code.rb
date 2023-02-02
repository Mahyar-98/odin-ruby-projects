def substrings(str, arr)
  repetitions = Hash.new(0)
  arr.each do |word|
    word_dc = word.downcase
    copy_str = str.downcase
    while copy_str.include?(word_dc)
      repetitions[word_dc] += 1
      copy_str = copy_str.sub(word_dc, "")
    end
  end
  repetitions
end
