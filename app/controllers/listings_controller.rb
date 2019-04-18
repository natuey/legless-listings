class ListingsController < ApplicationController
    before_action :set_listing, only: [:show, :edit, :update, :destroy]
    before_action :set_breeds_and_sexes, only: [:new, :edit]
   
    def index
        # show all the listings
        @listings = Listing.all
    end

    def create
        # create new listing
       @listing = Listing.create(listing_params)
        # byebug #this byebug is for debugging
        # byebug
        if @listing.errors.any?
            set_breeds_and_sexes
            render "new"
        else
            redirect_to listings_path
        end
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
    def set_breeds_and_sexes
        @breeds = Breed.all
        @sexes = Listing.sexes.keys
    end
    
    def set_listing
        id = params[:id]
        @listing = Listing.find(id)
    end

    def listing_params
        params.require(:listing).permit(:title, :description, :breed_id, :sex, :price, :deposit, :date_of_birth, :diet)
    end


end