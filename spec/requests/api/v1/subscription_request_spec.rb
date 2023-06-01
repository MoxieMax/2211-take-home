require 'rails_helper'

RSpec.describe 'Subscription API' do
  let!(:customer) { FactoryBot.create(:customer) }
  let!(:tea1) { FactoryBot.create(:tea) }
  let!(:tea2) { FactoryBot.create(:tea) }
  
  describe 'GET /api/v1/customers/:id/subscriptions' do
    it "returns all subscriptions for a given customer" do
      sub1 = FactoryBot.create(:subscription, customer_id: customer.id, tea_id: tea1.id)
      sub2 = FactoryBot.create(:subscription, customer_id: customer.id, tea_id: tea2.id)
      
      get "/api/v1/customers/#{customer.id}/subscriptions"
      
      expect(response).to be_successful
      
      sub_data = JSON.parse(response.body, symbolize_names: :true)[:data]
      
      first = sub_data.first
      last = sub_data.last
      expect(first[:id]).to be_a(String)
      expect(first[:id].to_i).to eq(sub1.id)
      expect(last[:id]).to be_a(String)
      expect(last[:id].to_i).to eq(sub2.id)
      
      expect(first[:type]).to eq("subscription")
      expect(last[:type]).to eq("subscription")
      
      expect(first[:attributes]).to be_a(Hash)
      expect(last[:attributes]).to be_a(Hash)
      
      expect(first[:attributes][:id]).to eq(sub1.id)
      expect(last[:attributes][:id]).to eq(sub2.id)
      
      expect(first[:attributes][:title]).to eq(sub1.title)
      expect(last[:attributes][:title]).to eq(sub2.title)
      
      expect(first[:attributes][:price]).to eq(sub1.price)
      expect(last[:attributes][:price]).to eq(sub2.price)
      
      expect(first[:attributes][:status]).to eq(sub1.status)
      expect(last[:attributes][:status]).to eq(sub2.status)
      
      expect(first[:attributes][:frequency]).to eq(sub1.frequency)
      expect(last[:attributes][:frequency]).to eq(sub2.frequency)
    end
  end
end