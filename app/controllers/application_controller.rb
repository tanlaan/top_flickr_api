require 'flickr'

class ApplicationController < ActionController::Base
    def index
        flickr = Flickr.new 
    end
end
