# Write your code here.
require "pry"
def dictionary
  shorter_words = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
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
        if word == long_words
          tweet_array[index] = dictionary[long_words]
        end
      end
    end
    tweet_array.join(" ")
end
def bulk_tweet_shortener(array)
    array.each_with_index do |word, index|
      dictionary.keys.each do |long_words|
        if word == long_words
          array[index] = dictionary[long_words]
        end
      end
    end
    array.join(" ")
    puts bulk_tweet_shortener
end
