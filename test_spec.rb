require 'spec_helper'

describe 'the test coverage report'
  it "should display the header for the test coverage page" do
     actual.should match("./public/coverage/rspec/index.html")
       render
       rendered.should contain("Code Coverage for hh3")
  end






end


