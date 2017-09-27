#write your code here
def pig_latin(word)
  vowels = ["a", "e", "i", "o", "u"]
  while !vowels.include?(word[0])
    if word[0,2] == "qu"
      word = word[2, word.length] + word[0,2]
    else
      word = word[1, word.length] + word [0]
    end
  end
  word += "ay"
  return word
end

def translate(sentence)
  str = ""
  words = sentence.split()
  words.each do |s|
    str += pig_latin(s) + " "
  end
  puts str
  return str[0, str.length - 1]
end
