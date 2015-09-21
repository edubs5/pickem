class Api::V1::BaseController < ApplicationController
	rescue_from ActiveRecord::RecordNotFound, with: :not_found!

	def not_found!
		render json: {error: 'Record Not found'}, status: 404
  end
end