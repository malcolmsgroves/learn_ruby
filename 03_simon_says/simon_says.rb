#write your code here
def echo(word)
  return word
end

def shout(word)

  return word.upcase!
end

def repeat(word, num=2)
  repeat = ""
  (0...num).each do |i|
    repeat += word + " "
  end
  return repeat[0, repeat.length - 1]
end

def start_of_word(word, num)
  str = word[0, num]
  return str
end

def first_word(sentence)
  arr = sentence.split()
  puts arr[0]
  return arr[0]
end

def titleize(word)
  arr = word.split()
  small_words = ['over', 'the', 'and']
  title = ""
  (0...arr.length).each do |i|

    # only capitalize words that are not small and the first word
    if !small_words.include?(arr[i].downcase) || i == 0
      title += arr[i].capitalize + " "
    else
      title += arr[i] + " "
    end
  end
  puts title
  return title[0, title.length - 1]
end
