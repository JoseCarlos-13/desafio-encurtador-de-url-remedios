class Link < ApplicationRecord
  has_shortened_urls

  # def generate_short_url
  #   rand(36**8).to_s(36)
  # end

  # def sanitize
  #   original.strip!
  #   sanitize_url = self.original_url.downcase.gsub(/(https?:\/\/)|(www\.)/,"")
  #   "http://#{sanitize_url}"
  # end
end
