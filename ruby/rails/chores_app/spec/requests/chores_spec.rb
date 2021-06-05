# frozen_string_literal: true

require 'rails_helper'

RSpec.describe 'Chores', type: :request do
  describe 'get chores_path' do
    it 'renders the index view' do
      FactoryBot.create_list(:chore, 5)
      get chores_path
      expect(response).to render_template(:index)
    end
  end
  describe 'get chore_path' do
    it 'renders the :show template for chore' do
      chore = FactoryBot.create(:chore)
      get chore_path(id: chore.id)
      expect(response).to render_template(:show)
    end
    it 'redirects to chores_path if id is invalid' do
      get chore_path(id: 5000)
      expect(response).to redirect_to chores_path
    end
  end
  describe 'get new chore' do
    it 'renders the :new template' do
      chore = FactoryBot.create(:chore)
      get new_chore_path(id: chore.id)
      expect(response).to render_template(:new)
    end
  end
  describe 'get edit_path' do
    it 'renders the :edit template' do
      chore = FactoryBot.create(:chore)
      get edit_chore_path(id: chore.id)
      expect(response).to render_template(:edit)
    end
  end
end
