require 'spec_helper'

describe CatchReportsController do
  describe 'routing' do

    it 'routes to #index' do
      expect(get: '/catch_reports').to route_to('catch_reports#index')
    end

    it 'routes to #new' do
      expect(get: '/catch_reports/new').to route_to('catch_reports#new')
    end

    it 'routes to #show' do
      expect(get: '/catch_reports/1').to route_to('catch_reports#show', id: '1')
    end

    it 'routes to #edit' do
      expect(get: '/catch_reports/1/edit').to route_to('catch_reports#edit', id: '1')
    end

    it 'routes to #create' do
      expect(post: '/catch_reports').to route_to('catch_reports#create')
    end

    it 'routes to #update' do
      expect(put: '/catch_reports/1').to route_to('catch_reports#update', id: '1')
    end

    it 'routes to #destroy' do
      expect(delete: '/catch_reports/1').to route_to('catch_reports#destroy', id: '1')
    end

  end
end
