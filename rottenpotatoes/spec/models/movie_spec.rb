require 'spec_helper'

describe Movie do
  #pending "add some examples to (or delete) #{__FILE__}"
  it "is valid with a title, rating, director, and release_date" do
        movie = Movie.new(
            title: 'Meh',
            rating: 'R',
            director: 'Rock',
            release_date: '2016-03-18')
        expect(movie).to be_valid
    end

    # other user tests here
    it 'should call Movie with director' do
        movie = Movie.create :title=> 'Meh', :rating=> 'R', :release_date=> '2016-03-18', :director=> 'Rock'
        Movie.by_director('Rock').first['director'].should eq('Rock')
    end

    it 'should give ratings' do
        ratings = ['G','PG','PG-13','NC-17','R']
        ratings.should == Movie.all_ratings
    end
end
