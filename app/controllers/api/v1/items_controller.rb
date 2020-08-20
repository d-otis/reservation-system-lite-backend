class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.all

    render json:
  end
end
