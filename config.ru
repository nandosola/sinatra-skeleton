# encoding: utf-8
require 'yaml'
ENV['RACK_ENV'] ||= 'development'
CONFIG = YAML.load_file(File.join('config', 'settings.yml'))[ENV['RACK_ENV']]
APP_ROOT = File.dirname(__FILE__)
CONFIG.freeze; APP_ROOT.freeze

require 'rubygems'
require 'bundler/setup'
require ::File.join( ::File.dirname(__FILE__), 'app' )

use Rack::CommonLogger
use Rack::Lint
use Rack::ShowExceptions
use Rack::Deflater
run Pasilla::ExampleApp
