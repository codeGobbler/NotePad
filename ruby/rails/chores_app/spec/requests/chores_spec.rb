# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Chores', type: :request do
  describe 'GET /chores' do
    it 'works! (now write some real specs)' do
      get chores_index_path
      expect(response).to have_http_status(200)
    end
  end
end