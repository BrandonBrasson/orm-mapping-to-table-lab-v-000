class Student
  attr_accessor :name, :grade


  def initialize(name, grade, id=nil)
    @name = name
    @id = id
    @grade = grade
  end

  def self.create_table
    sql =  <<-SQL
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
        )
    SQL
    DB[:conn].execute(sql)
  end


  def self.drop_table
      sql = "DROP TABLE IF EXISTS students"
      DB[:conn].execute(sql)
    end

    #def save
    #  sql = <<-SQL
    #  INSERT INTO students (name, grade)
    #vALUES &&

    def save
      sql = <<-SQL
      INSERT INTO students (name, grade)

    VALUES name
      SQL
      DB[:conn].execute(sql, self.name, self.grade)
      @id = DB[:conn].execute("SELECT * FROM students")[0][0]
    end

def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
  end

#WHAT IS THIS LAB
end
