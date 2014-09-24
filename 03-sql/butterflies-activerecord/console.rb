# Simple 'console' interface for testing out ActiveRecord interactively:

# Usage example:
# $ ruby console.rb
#[1] pry(main)> Butterfly.select(:name)
#=> [#<Butterfly id: nil, name: "Monarch">,
 #<Butterfly id: nil, name: "Regal Fritillary">,
 #<Butterfly id: nil, name: "Vanessa Atalanta">,
 #<Butterfly id: nil, name: "Menelaus Blue Morpho">,
 #<Butterfly id: nil, name: "Australian Painted Lady">,
 #<Butterfly id: nil, name: "Common Jezebel">,
 #<Butterfly id: nil, name: "Cairns Birdwing">,
 #<Butterfly id: nil, name: "Camila">]

require 'pry'
require 'active_record'

ActiveRecord::Base.logger = Logger.new(STDERR)

ActiveRecord::Base.establish_connection(
  :adapter => 'sqlite3',
  :database => 'butterflies.db'
)

require_relative 'butterfly'
require_relative 'plant'

binding.pry
