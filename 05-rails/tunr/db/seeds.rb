Album.destroy_all
Artist.destroy_all
Genre.destroy_all
Mixtape.destroy_all
Song.destroy_all
User.destroy_all

g1 = Genre.create(:name => 'Chamber pop')
g2 = Genre.create(:name => 'Text rock')
g3 = Genre.create(:name => 'Post punk')

s1 = Song.create(:name => 'Anisette')
s2 = Song.create(:name => 'Expect Delays')
s3 = Song.create(:name => 'When I Reach For My Revolver')

a1 = Album.create(:name => 'Systems/Layers')
a2 = Album.create(:name => 'Tropics and Meridians')
a3 = Album.create(:name => 'Vs')

r1 = Artist.create(:name => "Rachel's")
r2 = Artist.create(:name => 'Mission of Burma')
r3 = Artist.create(:name => 'June of 44')

u1 = User.create(:name => 'Groucho')
u2 = User.create(:name => 'Harpo')
u3 = User.create(:name => 'Jonesy')

m1 = Mixtape.create(:name => 'Code Jams')
m2 = Mixtape.create(:name => 'Sex Jams')
m3 = Mixtape.create(:name => 'Commute Jams')
