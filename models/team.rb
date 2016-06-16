require('pg')



class Team

attr_reader(:name, :manager, :robes, :id)


  def initialize(options)
    @name=options['name']
    @robes=options['robes']
    @manager=options['manager']
    @id=options['id']

  end

  def save()

  sql= "INSERT INTO teams (
    name,
    manager,
    robes)
    VALUES(
    '#{@name}',
    '#{@manager}',
    '#{@robes}'
    )"
    Team.run_sql( sql )
  end

  def self.all()
    sql = "SELECT * FROM teams ORDER BY name"
    teams = Team.run_sql(sql)
    result = teams.map{ |team| Team.new(team)}

  end

  def self.find(id)
    sql = "SELECT * FROM teams WHERE id=#{id}"
    result = Team.run_sql(sql)
    team = Team.new(result[0])
    return team
  end
 

  private 
  def self.run_sql(sql)
    begin 
      db=PG.connect({dbname: 'sinatra_quidditch', host: 'localhost'})
      result = db.exec(sql)
    ensure
      db.close
    end
    return result
  end

end