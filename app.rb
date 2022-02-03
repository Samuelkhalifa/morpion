require 'bundler'
Bundler.require

$:.unshift File.expand_path('../lib', __FILE__)

require 'app/board'
require 'app/board_case'
require 'app/player'
require 'app/game'
require 'app/application'
require 'views/show'

Application.new

