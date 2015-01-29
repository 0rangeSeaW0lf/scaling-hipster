require "rails_helper"

describe "Messages API" do
  it 'sends a list of messages' do
    FactoryGirl.create(:place)

    get '/places'

    expect(response).to be_success            # test for the 200 status-code

    expect(json['messages'].length).to eq(10) # check to make sure the right amount of messages are returned
  end
end