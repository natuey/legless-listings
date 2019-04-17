class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    
    def index
        # show all the listings
        @listings = Listing.all
    end

    def create
        # create new listing
    end

    def new
        # shows form for creating the listings
        @listing = Listing.new
    end

    def show
        # view a single listing
        
    end

    def update
        # update the current listing
        
    end

    def edit
        # show the edit form
        
    end

    def destroy
        # deletes current listing
        
    end

    private
    def set_listing
        id = params[:id]
        @listing = Lising.find(id)
    end



end