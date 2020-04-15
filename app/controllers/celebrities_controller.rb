class CelebritiesController < ApplicationController
    skip_before_action :verify_authenticity_token
    before_action :setup_data
    
    #Show all celebrities
    def index
    end
    
    #Show a single celebrity
    def show
        @name = “”
        @notability = “”
        @celebrities.each do |celebrity|
            if params[:name] == celebrity[“name”]
                @name = celebrity[“name”]
                @notability = celebrity[“notability”]
                render “show”
            end
        end
    end
    
    #Create a new celebrity
    def create
    end
    
    #Update a celebrity
    def update
    end
    
    #Remove a celebrity
    def destroy
    end

    private
    def setup_data
        session[:celebrities] = [
            { name: "Lindsay Lohan", notability: "Parent Trap" },
            { name: "Adam Sandler", notability: "Big Daddy" },
            { name: "Rob Schnider", notability: "Adam Sandler" }
        ] unless session[:celebrities]
    
        @celebrities = session[:celebrities]
    end
end