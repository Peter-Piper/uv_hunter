require 'spec_helper'

describe Devise::RegistrationsController do
  before { @request.env['devise.mapping'] = Devise.mappings[:user] }

  context 'for new users' do
    let(:user_params) { {user: attributes_for(:user)} }

    def do_post(params={})
      post :create, user_params.merge(params)
    end

    it { expect { do_post() }.to change(User, :count).by(1) }
  end

  context 'for editting users' do
    let(:old_pwd) { 'oldPassword' }
    let(:user) { create(:user, password: old_pwd, password_confirmation: old_pwd) }

    before { sign_in(user) }

    let(:params) { {user: {first_name: 'new name', last_name: 'new last name',
                           email: 'new@email.com', password: 'newPassword',
                           password_confirmation: 'newPassword', current_password: old_pwd}} }

    it 'expects to have all attributes updated' do
      old_pass = user.encrypted_password
      patch :update, params

      user.reload

      expect(user.first_name).to eq(params[:user][:first_name])
      expect(user.last_name).to eq(params[:user][:last_name])
      expect(user.email).to eq(params[:user][:email])
      expect(user.encrypted_password).not_to eq(old_pass)
    end
  end
end