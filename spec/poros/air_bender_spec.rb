require 'rails_helper'


RSpec.describe AirBender do
  it 'builds an AirBender object when data is passed in' do
    data = {
      name: "Me",
      photoUrl: "Some URL",
      allies: ['one'],
      enemies: ['two'],
    }
    @bender = AirBender.new(data)

    expect(@bender).to be_an_instance_of(AirBender)
    expect(@bender.name).to eq("Me")
    expect(@bender.photo).to eq("Some URL")
    expect(@bender.allies).to eq(['one'])
    expect(@bender.allies).to be_a Array
    expect(@bender.enemies).to be_a Array
    expect(@bender.enemies).to eq(['two'])
  end

  it 'returns a statement if param is nil' do
    data = {
      name: "Me",
    }

    @bender = AirBender.new(data)

    expect(@bender).to be_an_instance_of(AirBender)
    expect(@bender.name).to eq("Me")
    expect(@bender.photo).to eq("No Picture")
    expect(@bender.allies).to eq('None')
    expect(@bender.enemies).to eq('None')
  end
end
