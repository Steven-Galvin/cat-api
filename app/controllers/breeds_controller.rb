class BreedsController < ApplicationController
  def index
    @breeds = Breed.all
    name = params[:name]
    # origin = params[:origin]
    # @breeds = Breed.origin(origin)
    @breeds = Breed.name_search(name)
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
    @breed = Breed.find(params[:id])
    if  @breed.update!(breed_params)
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
    @breed = Breed.find(params[:id])
    if @breed.destroy
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
