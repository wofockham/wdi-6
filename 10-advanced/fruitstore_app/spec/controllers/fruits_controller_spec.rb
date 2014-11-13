require 'rails_helper'

RSpec.describe FruitsController, :type => :controller do
  describe 'GET to index' do
    before do
      3.times { |i| Fruit.create :name => "Fruit number #{i}" }
    end

    describe 'as HTML' do
      before do
        get :index
      end

      it 'should respond with a status 200' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should give us fruits in an instance variable in reverse order' do
        expect(assigns(:fruits)).to be
        expect(assigns(:fruits).length).to eq(3)
        expect(assigns(:fruits).first.class).to eq(Fruit)
        expect(assigns(:fruits).first.name).to eq('Fruit number 2')
      end

      it 'should render the index template' do
        expect(response).to render_template('index')
      end
    end

    describe 'as JSON' do
      before do
        get :index, :format => :json
      end

      it 'should respond with a status 200' do
        expect(response).to be_success
        expect(response.status).to eq(200)
      end

      it 'should give content type JSON' do
        expect(response.content_type).to eq('application/json')
      end

      it 'should put the name of the fruit in the JSON string' do
        fruits = JSON.parse(response.body)
        expect(fruits.length).to eq(3)
        expect(fruits.first['name']).to eq('Fruit number 2')
      end
    end
  end

  describe 'POST to create' do
    describe 'a fruit with valid information' do
      before do
        post :create, { :fruit => { :name => 'Strawberry'} }
      end

      it 'should redirect to the show action' do
        expect(response.status).to eq(302)
        expect(response).to redirect_to(fruit_path(assigns(:fruit)))
      end

      it 'should increase the number of Fruits' do
        expect(Fruit.count).to eq(1)
      end
    end

    describe 'a fruit without a name' do
      before do
        post :create, { :fruit => { :name => '' } }
      end

      it 'should render the new template' do
        expect(response).to render_template(:new)
      end

      it 'should not increase the number of Fruits' do
        expect(Fruit.count).to eq(0)
      end
    end
  end
end
