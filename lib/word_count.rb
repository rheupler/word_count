class String
  define_method(:word_count) do
    user_string = self.split(" ")
    user_string.count
  end
end
# class String
#   define_method(:word_count) do |sentence, word|
#     split = sentence.split
#   end
# end





#class String
#   define_method(:word_count) do |word|
#     final_count = 0
#
#     if (self.include?(word))
#       final_count = final_count.+(1)
#     end
#     word_count = word.to_i().push(" Quarter(s), ")
#     final_count.push(word)
#   end
# end
