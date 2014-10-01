Artist.destroy_all
Work.destroy_all

Artist.create(:name => 'Joan Miro', :nationality => 'Spanish', :dob => '1893/04/20', :period => '20th century', :image => 'http://upload.wikimedia.org/wikipedia/commons/5/5c/Portrait_of_Joan_Miro%2C_Barcelona_1935_June_13.jpg')
Work.create(:title => 'The Flight of the Dragonfly in Front of the Sun', :year => '1968', :medium => 'oil on canvas', :style => 'Abstract Art', :image => 'http://uploads0.wikipaintings.org/images/joan-miro/the-flight-of-the-dragonfly-in-front-of-the-sun.jpg')