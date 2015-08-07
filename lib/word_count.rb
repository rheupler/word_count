class String
  define_method(:word_count) do |word_find|
    user_string = self.downcase.split(" ")
    user_string.select{|word| word == word_find}.count
  end
end
