class Role
  def oto_s; 'principal'
  end
end

class Student < Role
  def to_s; 'student'
  end
end

class Teacher < Role
  def to_s; 'teacher'
  end
end

class RoleList
  def print_role(role)
    puts "School roles: #{role}"
  end
end

list = RoleList.new
list.print_role(Role.new)
list.print_role(Student.new)
list.print_role(Teacher.new)