# A method to reverse each word in a sentence, in place.
def reverse_words(my_words)
  #raise NotImplementedError
  return nil if my_words.nil?
  return my_words if my_words.length == 0 || my_words.length == 1

  # "love"  "lace"
  index = 0
  while index < my_words.length
    j = index
    while my_words[j] != " " && my_words[j]!= nil
      j += 1
    end

  # my_words[index..(j - 1)]
    if j != index
      right = index
      left = j - 1
      while right < left
        temp = my_words[right]
        my_words[right] = my_words[left]
        my_words[left] = temp
        right += 1
        left -= 1
      end
    end

    index = j + 1
  end
end
