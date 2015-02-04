require "rails_helper"

describe "API Messages" do
  it 'returns a list of all places' do
    avila_tei = FactoryGirl.create(:place)
    de_kaas = FactoryGirl.create(:place, name: "De Kaas", address: "Amsterdam")

    get '/places?address=Amsterdam'

    expect(response).to be_success            # test for the 200 status-code
    places = JSON.parse(response.body, symbolize_names: true)
    names = places.collect {|p| p[:name]}
    expect(names).to include("De Kaas")
    expect(names).not_to include("Avila Tei")
  end
end