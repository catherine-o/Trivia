require 'rails_helper'

describe 'Teams Index' do
    it 'Can start a new game' do

        visit teams_path

        expect(page).to have_content("Start New Game")
    end

    it 'has existing teams' do
        team1 = Team.create(team_name: "GEO")

        visit teams_path
        
        expect(page).to have_link(team1.team_name)
    end

end