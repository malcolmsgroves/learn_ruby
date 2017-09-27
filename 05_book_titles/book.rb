class Book
  # write your code here
  attr_reader :title

  def title=(str)
    @title = titleize(str)
  end

  def titleize(word)
    arr = word.split()
    small_words = ['over', 'the', 'and', 'a', 'an', 'in', 'of']
    title = ""
    (0...arr.length).each do |i|

      # only capitalize words that are not small, and the first word
      if !small_words.include?(arr[i].downcase) || i == 0
        title += arr[i].capitalize + " "
      else
        title += arr[i] + " "
      end
    end
    puts title
    return title[0, title.length - 1]
  end


end
