require 'rails_helper'

# describe GummiesController do
#   describe 'GET #new' do
#     it "new.html.erbに遷移すること" do
#       get :new
#       # render_templateマッチャ：引数に指定したアクションのビューを返すかどうか
#       expect(response).to render_template :new
#     end
#   end

  # describe 'GET #edit' do
  #   it "@gummyに正しい値が入っていること" do
  #     gummy = create(:gummy)
  #     get :edit, params: { id: gummy }
  #     expect(assigns(:gummy)).to eq gummy
  #   end

  #   it "edit.html.erbに遷移すること" do
  #     gummy = create(:tweet)
  #     get :edit, params: { id: gummy }
  #     expect(response).to render_template :edit
  #   end
  # end

  # describe 'GET #index' do
  #   it "@gummyに正しい値が入っていること" do
  #     gummies = create_list(:gummy, 3)
  #     get :index
  #     expect(assign(:gummies)).to match(gummies.sort{ |a, b| b.created_at <=> a.created_at })
  #   end

  #   it "index.html.erbに遷移すること" do
  #     get :index
  #     expect(response).to render_template :index
  #   end
  # end
# end
