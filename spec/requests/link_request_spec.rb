# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Links', type: :request do
  describe 'POST#short_link' do
    context 'when create a new short url' do
      let!(:link) { attributes_for(:link, original_url: 'http://rails.com.br/e431sqwdaqz12fv',
                                          short_link: '') }

      before do
        post '/links/short_link', params: link
      end

      it 'must return status code 200' do
        expect(response).to have_http_status(:created)
      end

      it 'must return the short url' do
        expect(json_body).to have_key(:short_url)
      end
    end
  end
end
