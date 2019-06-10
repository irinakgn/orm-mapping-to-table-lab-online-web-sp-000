class Student

<<<<<<< HEAD
    attr_accessor :name, :grade
=======
    attr_accessor :name, :grade, :id
>>>>>>> 817d83b882bc877949cc75a798cc0461ddd56acd
    attr_reader :id

    def initialize(name, grade, id=nil)
      @id = id
      @name = name
      @grade = grade
    end

    def self.create_table
        sql =  <<-SQL
<<<<<<< HEAD
          CREATE TABLE IF NOT EXISTS students (
=======
          CREATE TABLE IF NOT EXISTS student (
>>>>>>> 817d83b882bc877949cc75a798cc0461ddd56acd
            id INTEGER PRIMARY KEY,
            name TEXT,
            grade TEXT
            )
            SQL
        DB[:conn].execute(sql)
<<<<<<< HEAD
    end
    def self.drop_table
         sql = <<-SQL
         DROP TABLE students
         SQL
         DB[:conn].execute(sql)
    end

    def save
         sql = <<-SQL
         INSERT INTO students (name, grade)
         VALUES (?, ?)
         SQL
         DB[:conn].execute(sql, self.name, self.grade)

         @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]

    end

    def self.create(name:, grade:)
    student = Student.new(name, grade)
    student.save
    student
    end

=======
      end

      def save
        sql = <<-SQL
        INSERT INTO student (name, grade)
        VALUES (?, ?)
        SQL

        DB[:conn].execute(sql, self.name, self.grade)

      end
>>>>>>> 817d83b882bc877949cc75a798cc0461ddd56acd
end
