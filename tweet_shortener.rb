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
  long_words = shorter_words.keys
  binding.pry
  tweet_array = tweet.split(" ")
    tweet_array.collect do |word|

    end
end
