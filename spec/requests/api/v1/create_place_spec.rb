require "rails_helper"

describe "API Messages" do
  it 'creates a new place' do
    post '/places', {place: { name: "Ponte Centrale", address: "Bayreuth", description: "Italian Food"}}

    expect(response).to be_success            # test for the 200 status-code

    place = Place.last

    place_response = JSON.parse(response.body, symbolize_names: true)

    expect(place.name).to match(place_response[:name])
    expect(place.id).to match(place_response[:id])

  end

  it 'doesn\'t create a new place' do
    post '/places', {place: { name: "", address: "Bayreuth", description: "Italian Food"}}
    expect(response).to be_failed
    
  end
end