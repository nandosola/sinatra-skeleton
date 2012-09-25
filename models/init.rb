# encoding: utf-8
=begin
require 'mongoid'

if %w(test development).include?(ENV['RACK_ENV'])
  Mongoid.logger.level = Logger::DEBUG
  Moped.logger.level = Logger::DEBUG
end

Mongoid.load!('config/mongoid.yml')
=end

require_relative 'example'
