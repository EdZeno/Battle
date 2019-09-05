feature 'sign in' do
  scenario 'players input names and submit a form' do
    sign_in_and_play
    expect(page).to have_content('Boris vs James')
  end
end
