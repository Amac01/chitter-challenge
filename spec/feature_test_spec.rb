

feature "Posts a message (peep) to chitter" do
  scenario 'by visiting chitter, users can post a message(peep)' do
    visit '/'
    save_and_open_page
    expect(page).to have_content('Hello all')
  end

  #
  # it "returns chitter when show_list is called" do
  #   chitter = Chitter.show_list
  #   expect(chitter[0]['url']).to eq ""
  # end

end
