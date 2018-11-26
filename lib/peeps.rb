require 'pg'

class Peep

  def self.all
    connection = PG.connect(dbname: 'chitter')
    "Hello all"
  end
end
