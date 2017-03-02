class PagesController < ApplicationController
  def home
  end

  def getoffthecouch
  	@random = rand(1..45).to_i

  	@posts = Post.all.order("RANDOM()").take(1)
  end

  def art
    @random = rand(1..45).to_i

  	@posts = Post.art.order("RANDOM()").take(1)
  end
  def music
    @random = rand(1..45).to_i

    @posts = Post.music.order("RANDOM()").take(1)
  end
  def food
    @random = rand(1..45).to_i

    @posts = Post.food.order("RANDOM()").take(1)
  end
  def nightlife
    @random = rand(1..45).to_i

    @posts = Post.nightlife.order("RANDOM()").take(1)
  end
  def drinks
    @random = rand(1..45).to_i

    @posts = Post.drinks.order("RANDOM()").take(1)
  end
  def outdoors
    @random = rand(1..45).to_i

    @posts = Post.outdoors.order("RANDOM()").take(1)
  end
  def sports
    @random = rand(1..45).to_i

    @posts = Post.sports.order("RANDOM()").take(1)
  end
  def theatre
    @random = rand(1..45).to_i

    @posts = Post.theatre.order("RANDOM()").take(1)
  end  
  def culture
    @random = rand(1..45).to_i

    @posts = Post.culture.order("RANDOM()").take(1)
  end   
  def fitness
    @random = rand(1..45).to_i

    @posts = Post.fitness.order("RANDOM()").take(1)
  end                  
end
