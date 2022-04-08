require "rails_helper"

RSpec.describe Character do
  it "exists with attributes" do
    data = {
      :_id=>"5cf5679a915ecad153ab68da",
      :allies=>["Ozai", "Zuko "],
      :enemies=>["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "],
      :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      :name=>"Azula",
      :affiliation=>" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
    }

    character = Character.new(data)

    expect(character).to be_instance_of(Character)
    expect(character.id).to eq("5cf5679a915ecad153ab68da")
    expect(character.name).to eq("Azula")
    expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
    expect(character.allies).to eq(["Ozai", "Zuko "])
    expect(character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
    expect(character.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end

  it "exists without a photo" do
    data = {
      :_id=>"5cf5679a915ecad153ab68da",
      :allies=>["Ozai", "Zuko "],
      :enemies=>["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "],
      # :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
      :name=>"Azula",
      :affiliation=>" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
    }

    character = Character.new(data)

    expect(character).to be_instance_of(Character)
    expect(character.id).to eq("5cf5679a915ecad153ab68da")
    expect(character.name).to eq("Azula")
    expect(character.photo).to eq(nil)
    expect(character.allies).to eq(["Ozai", "Zuko "])
    expect(character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
    expect(character.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  end

  # it "exists without allies or enemies" do
  #   data = {
  #     :_id=>"5cf5679a915ecad153ab68da",
  #     :allies=>["Ozai", "Zuko "],
  #     :enemies=>["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "],
  #     :photoUrl=>"https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941",
  #     :name=>"Azula",
  #     :affiliation=>" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)"
  #   }
  #
  #   character = Character.new(data)
  #
  #   expect(character).to be_instance_of(Character)
  #   expect(character.id).to eq("5cf5679a915ecad153ab68da")
  #   expect(character.name).to eq("Azula")
  #   expect(character.photo).to eq("https://vignette.wikia.nocookie.net/avatar/images/1/12/Azula.png/revision/latest?cb=20140905084941")
  #   expect(character.allies).to eq(["Ozai", "Zuko "])
  #   expect(character.enemies).to eq(["Iroh", "Zuko", "Kuei", "Long Feng", "Mai", "Ty Lee", "Ursa "])
  #   expect(character.affiliations).to eq(" Azula's team (formerly) Dai Li (formerly) Fire Nation Fire Nation Royal Family Fire Warriors Royal Fire Academy for Girls (formerly)")
  # end
end
