require 'rails_helper'

RSpec.describe NationService do
  context 'class methods' do
    context '#connect' do
      it "returns json response" do
        response = NationService.connect

        expect(response).to be_a Faraday::Connection
      end
    end
    context '#get_members' do
      it "returns member data" do
        members = NationService.get_members("Fire+Nation")

        expect(members.first).to be_a Member
      end
    end
  end
end
