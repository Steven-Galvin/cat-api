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
    json_response(@breed)
  end

  def update
    @breeds = Breed.find(params[:id])
    @breeds.update(breed_params)
  end

  def destroy
    @breeds = Breed.find(params[:id])
    @breeds.destroy
  end

  private
  def json_response(object)
    render json: object, status: :ok
  end

  def breed_params
    params.permit(:name, :origin, :common_name, :characteristics, :image, :fun_fact, :variations, :history)
  end

end
