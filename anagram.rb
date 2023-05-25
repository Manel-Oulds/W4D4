def first_anagram?(str1, str2)
    anagrams = str1.chars.permutation.map(&:join)
    anagrams.include?(str2)
end


  def second_anagram?(word,word2)
    res = word2.split('')
    word.split('').each do |x|
        i = res.find_index(x)
        res = res[0...i]+res[i+1..-1]
    end
    return res.empty?

  end

#   p second_anagram?("hy","yhe")


  def third_anagram?(word,word2)
    word = word.chars.sort.join
    word2 = word2.chars.sort.join
    return word == word2
  end

  
  def fourth_anagram?(word,word2)
    hash1 = Hash.new(0)
    hash2 = Hash.new(0)

    word.each_char do |x|
        hash1[x]+=1
    end
    word2.each_char do |x|
        hash2[x]+=1
    end
    return hash1 == hash2
  end

  p third_anagram?("ey","yhe")