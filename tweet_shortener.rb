# Write your code here.
require "pry"
def dictionary
  shorter_words = {
    "hello" => "hi",
    "to, two, too" => "2",
    "for, four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (tweet)
  tweet_array = tweet.split(" ")
    tweet_array.each_with_index do |word, index|
      dictionary.keys.each do |long_words|
        binding.pry
      end
    end
end
