class InvestorsController < ApplicationController

     
    skip_before_action :verify_authenticity_token

    def index
       investors =Investor.all
        render json:investors , status:200
    end

    def show
        investor = Investor.find_by(id: params[:id])
        if investor
            render json:investor, status:200
        else 
            render json:{error:"This id investor not found"}
        end
    end

    def create 
            investor =Investor.create(investor_params)
            if investor.save
                render json:investor, status:200
            else
                render json:{error: "Require all investor data for create "}
            end 
    end
     
    def update 
        investor =Investor.find_by(id: params[:id])
        if investor
            investor.update(investor_params)
            render json:investor, status:200
        else
            render json:{error:"Not Update  investor data"}
        end
    end

    def destroy 
        investor =Investor.find_by(id: params[:id])
        if investor
            investor.destroy
            render json:"This  investor  id data deleted"
        else
            render json:{error: "This investor id not available"}
        end
    end

    private
    def investor_params
        params.require(:investor).permit(:i_name , :i_email , :i_age , :i_contact, :i_ammount ,:businessman_id)
    end
end
