# encoding: utf-8
module Pasilla
  class ExampleApp < Sinatra::Base

    get '/?' do
      'Hello, World!'
    end

  end
end
