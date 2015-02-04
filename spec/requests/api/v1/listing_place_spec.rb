require "rails_helper"

describe "API Messages" do
  it 'returns an specific places' do
    place = Place.create(name: "Avila Tei", address: "Caracas", description: "Japanese Cuisine")

    get "/places/#{ place.id }"
    expect(response).to be_success            # test for the 200 status-code

    place_response = JSON.parse(response.body, symbolize_names: true)
    expect(place.name).to match(place_response[:name])
  end
end