require 'rails_helper'

RSpec.describe 'users/rivalries/_user_candidates' do
  it 'renders user candidates' do
    user = FactoryGirl.create(:user)
    allow(user).to receive(:follows).and_return(User.none)
    render(partial: 'users/rivalries/user_candidates', locals: {
      user: user,
      category: FactoryGirl.create(:category)
    })

    expect(view).to render_template('users/rivalries/_user_candidates')
  end
end
