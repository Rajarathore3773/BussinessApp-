class BusinessmenController < ApplicationController
    
    skip_before_action :verify_authenticity_token

    def index
        businessmen = Businessman.all
        render json:businessmen , status:200
    end
    def show
        @businessman =Businessman.find_by(id: params[:id])
        if @businessman
            render json:@businessman, status:200
        else 
            render json: {error:"This id businessman not found"}
        end
    end

    def create 
        businessman =Businessman.create(businessman_params)
        if businessman.save
            render json:businessman, status:200
        else
            render json:{error: "Require all Businessmen data for create "}
        end 
    end
     
    def update 
        businessman =Businessman.find_by(id: params[:id])
        if businessman
            businessman.update(businessman_params)
            render json:businessman, status:200
        else
            render json:{error:"Not Update  businessman data"}
        end
    end

    def destroy 
        businessman =Businessman.find_by(id: params[:id])
        if businessman
            businessman.destroy
            render json:"This id businessman data delete"
        else
            render json:{error:"This businessman id not available"}
        end
    end

    private
    def businessman_params
        params.require(:businessman).permit(:b_company, :b_name, :b_email, :b_age, :b_contact)
    end
end
