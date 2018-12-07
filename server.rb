require 'sinatra'
require 'curb'
require 'json'

get '/' do
  erb :home
end


get '/cake' do
  erb :cake
end

get '/cookie' do
  erb :cookie
end

get '/muffin' do
  erb :muffin
end

get '/contact' do
  erb :contact
end


$cookies = []
$muffins = []
$cakes = []

class Cookie
  attr_accessor :name, :image, :description, :cost
  def initialize(name, image, description, cost)
    @name = name
    @image = image
    @description = description
    @cost = cost
    $cookies << self
  end
end

class Muffin
  attr_accessor :name, :image, :description, :cost
  def initialize(name, image, description, cost)
    @name = name
    @image = image
    @description = description
    @cost = cost
    $muffins << self
  end
end

class Cake
  attr_accessor :name, :image, :description, :cost
  def initialize(name, image, description, cost)
    @name = name
    @image = image
    @description = description
    @cost = cost
    $cakes << self
  end
end


cookie_one = Cookie.new("Sugar Cookie", "/images/c1.png", "The best sugar cookies on the planet.", "$3.00")

cookie_two = Cookie.new("Chocolate Frosted", "/images/c2.png", "Chocolate dream full of lots of sugar.", "$3.00")

cookie_three = Cookie.new("Chocolate Chip", "/images/c3.png", "If you love chocolate chip... yum,yum, yum!.", "$2.00")

cookie_four = Cookie.new("Double Chocolate Chip Oreo", "/images/c4.png", "A cookie that looks like Oreo, or maybe DOUBlE oreo.", "$3.00")

cookie_five = Cookie.new("Strawberry Chunks", "/images/c5.png", "If you love these cookies, then you will love my cookies", "$5.00")

cookie_six = Cookie.new("Choco Choc", "/images/c6.png", "Yum, Yum, Yum You need to get cookies with nuts!.", "$3.00")

muffin_one = Muffin.new("Choc chip Muffin", "/images/m1.png", "The Muffin man is here , and knows what you wANT1.", "$5.00")

muffin_two = Muffin.new("Strawberry Muffin", "/images/m2.png", "Strawberry on top is the best, yum, yum, yum. This muffin is free of preservatives.", "$6.00")

muffin_three = Muffin.new("Choco LOoco", "/images/m4.png", "I live for muffins, do you? I know you do!", "$3.00")

muffin_four = Muffin.new("MUFF Muffin", "/images/m5.png", "You can't have this one or maybe!", "3.00")

cake_one = Cake.new("Vanilla!", "/images/ck1.png", "The wonderful flavor of this cake is the bomb.", "$47.00")

cake_two = Cake.new("Vanilla Chocolate Cake!", "/images/ck2.png", "I love this cake and you should too. Best enjoyed in alone!", "$49.00")

cake_three = Cake.new("Chocolate Cake!", "/images/ck3.png", "This cake is our flagship cake, it will be the last cake you ever taste!", "$63.00")

cake_four = Cake.new("Strawberry Cake Cake", "/images/ck4.png", "This taste like Strawberry Shortcake!", "$65.00")

cake_one = Cake.new("Chocolate Gun!", "/images/ck5.png", "I love chocolate monkeys, do you?.", "$37.00")

cake_two = Cake.new("Strawberry Frosted", "/images/cc1.png", "This is quite disgusting! BUT WE SELL IT ANYWAY!", "$2.00")

cake_three = Cake.new("Party Sprinkles!", "/images/cc2.png", "This cupcake takes extra long to prepare, but its worth the wait!", "$3.00")

cake_four = Cake.new("Cherry on Top", "/images/cc4.png", "Let us pop your cherry!", "$5.00")

cake_four = Cake.new("Shine Shine Cup  Cake", "/images/cc5.png", "Try this one, yu will like it!", "$1.00")


