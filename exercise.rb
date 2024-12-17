class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    str.split.map do |word|
      punctuation = word[-1] =~ /[[:punct:]]/ ? word[-1] : ''
      core_word = punctuation.empty? ? word : word[0..-2]
      
      if core_word.length > 4
        replacement = core_word[0] == core_word[0].upcase ? "Marklar" : "marklar"
        replacement + punctuation
      else
        word
      end
    end.join(' ')
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    fib_sequence = [1, 1]
    while fib_sequence.length < nth
      fib_sequence << fib_sequence[-1] + fib_sequence[-2]
    end
    fib_sequence.select(&:even?).sum
  end

end
