require "rails_helper"

describe "API Messages" do
  it 'returns places only in Amsterdam' do
    avila_tei = FactoryGirl.create(:place)
    de_kaas = FactoryGirl.create(:place, name: "De Kaas", address: "Amsterdam")

    get '/places'

    expect(response).to be_success            # test for the 200 status-code
    expect(response.body).not_to be_empty
    # response.body
  end
end