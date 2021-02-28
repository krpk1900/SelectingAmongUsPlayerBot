# frozen_string_literal: true
# This file was auto-generated by lib/tasks/web.rake

require 'spec_helper'

RSpec.describe Slack::Web::Api::Endpoints::AppsPermissions do
  let(:client) { Slack::Web::Client.new }
  context 'apps.permissions_request' do
    it 'requires scopes' do
      expect { client.apps_permissions_request(trigger_id: %q[]) }.to raise_error ArgumentError, /Required arguments :scopes missing/
    end
    it 'requires trigger_id' do
      expect { client.apps_permissions_request(scopes: %q[]) }.to raise_error ArgumentError, /Required arguments :trigger_id missing/
    end
  end
end