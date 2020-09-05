class Api::V1::ItemsController < ApplicationController
  def index
    items = Item.order(title: :asc)

    render json: ItemSerializer.new(items).serialized_json
  end
end
