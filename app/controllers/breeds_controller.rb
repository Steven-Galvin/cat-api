class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    json_response(@breeds)
  end

  def show
    @breed = Breed.find(params[:id])
    json_response(@breed)
  end

  def create
    @breed = Breed.create!(breed_params)
    json_response(@breed, :created)
  end

  def update
    @breeds = Breed.find(params[:id])
    if  @breeds.update!(breed_params)
      render status: 200, json: {
        message: "breed successfully updated"
      }
    else
      render status: 503, json: {
        message: "service not available"
      }
    end
  end

  def destroy
    @breeds = Breed.find(params[:id])
    if @breeds.destroy
      render status: 200, json: {
        message: "breed destroyed"
      }
    else
      render status: 503, json: {
        message: "service not available"
      }
    end
  end

  private

  def breed_params
    params.permit(:name, :origin, :common_name, :characteristics, :image, :fun_fact, :variations, :history)
  end

end
