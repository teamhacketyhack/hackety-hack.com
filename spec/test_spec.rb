require 'spec_helper'
describe 'index.html' do


  it "should display the header for the test coverage page" do
      #render
     visit 'index.html'
     expect(page).to have_content 'Hackety' 
  end

end


