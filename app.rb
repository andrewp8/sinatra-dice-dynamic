require "sinatra"
require "sinatra/reloader"

get("/") do
  erb(:homepage)
end

get("/dice/2/6") do
  @rolls = []

  2.times do
    die = rand(1..6)

    @rolls.push(die)
  end

  erb(:two_six)
end

get("/dice/2/10") do
  @rolls = []

  2.times do
    die = rand(1..10)

    @rolls.push(die)
  end

  erb(:two_ten)
end

get("/dice/1/20") do
  @rolls = []

  1.times do
    die = rand(1..20)

    @rolls.push(die)
  end

  erb(:one_twenty)
end

get("/dice/5/4") do
  @rolls = []

  5.times do
    die = rand(1..4)

    @rolls.push(die)
  end

  erb(:five_four)
end

get("/dice/:num_of_dices/:num_of_sides") do
  @rolls = []
  @number_of_dices = params.fetch("num_of_dices").to_i
  @number_of_sides = params.fetch("num_of_sides").to_i
  @number_of_dices.times do
    die = rand(1..@number_of_sides)

    @rolls.push(die)
  end

  erb(:flexible)
end
