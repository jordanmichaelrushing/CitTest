class UnitsController < ApplicationController

  def si
    if params[:units].class == String
      render json: params[:units].unit_conversion
    else
      render json: {
        success: false,
        message: 'Units parameter is missing'
      }
    end
  end
end
