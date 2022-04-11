require 'flickr'

class ApplicationController < ActionController::Base
    def index
        if params[:user_id] 
            flickr = Flickr.new 
            args = {}
            args[:per_page] = 9
            args[:user_id] = params[:user_id]
            @images = flickr.photos.search args
        end
    end
end
