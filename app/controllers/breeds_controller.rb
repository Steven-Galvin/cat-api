class QuotesController < ApplicationController
  def index
    @breeds =
    json_response(@breeds)
  end

  def create

  end

  def update

  end

  def destroy

  end

  private
  def json_response(object)
    render json: object, status: :ok
  end


end
