require 'rails_helper'

describe 'Rounds Index' do
    it 'Can select a category' do
        visit rounds_path
        expect(page).to have_content("Choose a category")
    end

    it 'can go to selected category' do
        
        visit rounds_path

    
        expect(page).to have_link(round_path(1))
        

    end



end