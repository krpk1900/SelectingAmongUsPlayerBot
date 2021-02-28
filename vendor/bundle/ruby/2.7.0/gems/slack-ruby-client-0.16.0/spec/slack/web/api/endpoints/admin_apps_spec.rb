# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::AdminApps do
  let(:client) { Slack::Web::Client.new }
  context 'admin.apps_clearResolution' do
    it 'requires app_id' do
      expect { client.admin_apps_clearResolution }.to raise_error ArgumentError, /Required arguments :app_id missing/
    end
  end
end