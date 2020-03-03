class Api::PagesController < ApplicationController
  def get_fortune
    @fortunes = ["You will find love in 7 days!", "You will pass your hardest class at the end of the semeter", "You will get to work on time today"]
    @fortunes = @fortunes.sample
    render "fortunes.json.jb"
  end

  def get_random_number
    @numbers = [rand(60), rand(60), rand(60), rand(60), rand(60), rand(60)]
    index = 0
    while index < @numbers.length
      puts @numbers[index]
      index += 1
    end
    render "random_numbers.json.jb"
  end

  def song_lyrics
    @bottles = 99
    @lyrics = {}
    100.times do
      if @bottles > 2 && @bottles <= 99
        @lyrics["LYRIC FOR #{@bottles} BOTTLES"] = "#{@bottles} bottles of beer on the wall, #{@bottles} bottles of beer. Take one down and pass it around, #{@bottles - 1} bottles of beer on the wall."
        @bottles -= 1
      elsif @bottles == 2
        @lyrics["LYRICS FOR #{@bottles} BOTTLES"] = "#{@bottles} bottles of beer on the wall, #{@bottles} bottles of beer. Take one down and pass it around, #{@bottles - 1} more bottle of beer on the wall."
        @bottles -= 1
      elsif @bottles == 1
        @lyrics["LYRIC FOR #{@bottles} BOTTLES"] = "#{@bottles} bottle of beer on the wall, #{@bottles} bottle of beer. Take one down and pass it around, no more bottles of beer on the wall."
        @bottles -= 1
      else
        @lyrics["LYRIC FOR #{@bottles} BOTTLES"] = "No more bottles of beer on the wall, no more bottles of beer. Go to the store and buy some more, #{@bottles + 99} bottles of beer on the wall."
      end
    end
    puts @lyrics
    render "beers.json.jb"
  end
end
