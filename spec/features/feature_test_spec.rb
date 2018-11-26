

feature "Posts a message (peep) to chitter" do
  scenario 'by visiting chitter, users can post a message(peep)' do
    visit '/'
    # save_and_open_page
    expect(page).to have_content('Hello all')
  end

  feature 'seeing peeps' do
  scenario 'A user can see a list of peeps in' do
    visit('/chitters')


    expect(page).to have_content ("My second peep")
    expect(page).to have_content ("My peep of the day")
    expect(page).to have_content ("it's getting better")
  end
end

  #
  # it "returns chitter when show_list is called" do
  #   chitter = Chitter.show_list
  #   expect(chitter[0]['url']).to eq ""
  # end

end


















# scenario 'Can create peeps after sign up'  do
#   # Use a sign up helper we created earlier
#   sign_up_and_create_peep('Test text')
#
#   expect(current_path).to eq '/peeps'
#   expect(page.status_code).to eq 200
#
#   within 'ul#peeps' do
#     expect(page).to have_content('Test text')
#   end
# end
