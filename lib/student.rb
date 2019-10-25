class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]

  attr_accessor :name,  :id

  def initialize(name, id=nil)
    @id = id
    @name = name

  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS songs (
        id INTEGER PRIMARY KEY,
        name TEXT,

        )
        SQL
    DB[:conn].execute(sql)
  end


end
