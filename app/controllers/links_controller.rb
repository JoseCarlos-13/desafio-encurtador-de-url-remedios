# frozen_string_literal: true

class LinksController < ApplicationController
  def short_link
    link = Link.new(link_params)

    if link.save
      render json: link,
             serializer: Links::Create::LinkSerializer,
             status: :created
    else
      render json: { errors: link.errors.message }
    end
  end

  private

  def link_params
    params.permit(:original_url, :short_url)
  end
end
