# frozen_string_literal: true

require 'rails_helper'

RSpec.describe '_user_util_links.html.erb' do
  let(:blacklight_config) { Blacklight::Configuration.new }

  before do
    allow(view).to receive(:blacklight_config).and_return blacklight_config
    allow(view).to receive(:has_user_authentication_provider?).and_return(true)
  end

  it 'does not display if turned off' do
    allow(Rails.application.config).to receive(:user_account_ui_enabled).and_return('false')
    render
    expect(rendered).not_to match(/Login/)
  end

  it 'displays if it is turned on' do
    allow(Rails.application.config).to receive(:user_account_ui_enabled).and_return('true')
    render
    expect(rendered).to match(/Login/)
  end
end
