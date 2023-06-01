require 'rails_helper'

RSpec.describe 'Customer API' do
  describe 'GET /api/v1/customers/:id' do
    let!(:customer) { FactoryBot.create(:customer) }

    before { get "/api/v1/customers/#{customer.id}" }
    
    it 'returns the customer' do
      expect(response).to be_successful
      
      customer_data = JSON.parse(response.body, symbolize_names: :true)[:data]
      
      expect(customer_data).to be_a(Hash)
      expect(customer_data.keys).to eq([:id, :type, :attributes, :relationships])
      expect(customer_data[:attributes].keys).to eq([:id, :first_name, :last_name, :email, :address])
      
      expect(customer_data[:id]).to be_a(String)
      expect(customer_data[:type]).to be_a(String)
      expect(customer_data[:type]).to eq("customer")
      expect(customer_data[:attributes]).to be_a(Hash)
      expect(customer_data[:relationships]).to be_a(Hash)
      
      attributes = customer_data[:attributes]
      
      expect(attributes[:id]).to be_an(Integer)
      expect(attributes[:id]).to eq(customer.id)
      
      expect(attributes[:first_name]).to be_a(String)
      expect(attributes[:first_name]).to eq(customer.first_name)
      
      expect(attributes[:last_name]).to be_a(String)
      expect(attributes[:last_name]).to eq(customer.last_name)
      
      expect(attributes[:email]).to be_a(String)
      expect(attributes[:email]).to eq(customer.email)
      
      expect(attributes[:address]).to be_a(String)
      expect(attributes[:address]).to eq(customer.address)
    end
  end
end