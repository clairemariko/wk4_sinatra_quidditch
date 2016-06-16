require('pg')



class Player


  attr_reader( :name, :id, :team_id, )


  def initialize(options)
    @name=options['name']
    @id=options['id']
    @team_id=options['team_id']
  end



end