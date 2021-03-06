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
    array.each_with_index do |tweet, index|
      tweet_array = tweet.split(" ")
        tweet_array.each_with_index do |word, index|
          dictionary.keys.each do |long_words|
        if word.downcase == long_words
          tweet_array[index] = dictionary[long_words]
        end
      end
    end
    phrase = tweet_array.join(" ")
    puts phrase
  end
end

def selective_tweet_shortener(tweet)
  if tweet.length > 140
    word_substituter (tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator(tweet)
  if tweet.length > 140
    word_substituter (tweet)
    tweet[0..136] + "..."
  else
    tweet
  end
end
