require 'rails_helper'

RSpec.describe Member type: :model do
  describe 'validations' do
    it { should validate_presence_of :name}
    it { should validate_presence_of :allies}
    it { should validate_presence_of :enemies}
    it { should validate_presence_of :affiliations}
  end
end