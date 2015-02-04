require "rails_helper"

describe "API Messages" do
  it 'updates an existing place' do

    place = Place.create(name: "Hard Rock Cafe", address: "Berlin", description: "American Cuisine")

    put "/places/#{ place.id }", {place: { address: "Hamburg" } }

    expect(response).to be_success            # test for the 200 status-code

    place_response = JSON.parse(response.body, symbolize_names: true)
    new_place = Place.find(place.id)
    expect(new_place.address).to match(place_response[:address])
    expect(new_place.address).not_to match(place.address)

  end
end