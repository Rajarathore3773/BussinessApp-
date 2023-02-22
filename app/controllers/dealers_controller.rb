class DealersController < ApplicationController


     
    skip_before_action :verify_authenticity_token

    def index
       dealers =Dealer.all
        render json:dealers , status:200
    end

    def show
        dealer = Dealer.find_by(id: params[:id])
        if dealer
            render json:dealer, status:200
        else 
            render json:{error:"This id Dealer not found"}
        end
    end

    def create 
        dealer =Dealer.create(dealer_params)
        if dealer.save
            render json:dealer, status:200
        else
            render json:{error: "Require all dealer data for create "}
        end 
    end
     
    def update 
        dealer =Dealer.find_by(id: params[:id])
        if dealer
            dealer.update(dealer_params)
            render json:dealer, status:200
        else
            render json:{error:"Not Update  Dealer data"}
        end
    end

    def destroy 
        dealer =Dealer.find_by(id: params[:id])
        if dealer
            dealer.destroy
            render json:"This  Dealer  id data deleted"
        else
            render json:{error:"This Dealer id not available"}
        end
    end

    private
    def dealer_params
        params.require(:dealer).permit(:d_name, :d_email, :d_age, :d_contact, :businessman_id)
    end
end
