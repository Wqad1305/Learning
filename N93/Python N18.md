1\. Classes and Objects



* Class = khuôn mẫu để tạo ra đối tượng.



* Object = một đối tượng được tạo từ class.



* \_\_init\_\_() = hàm khởi tạo, chạy khi tạo object.



* self = đại diện cho object hiện tại.



* Attribute = thuộc tính của object.



* Method = hàm nằm bên trong class.

\-------------------------------------------

class Student:

&#x20;   def \_\_init\_\_(self, name, age):

&#x20;       self.name = name

&#x20;       self.age = age



&#x20;   def introduce(self):

&#x20;       print("Tên:", self.name)

&#x20;       print("Tuổi:", self.age)





student1 = Student("Hoang", 20)



student1.introduce()



\--------------------------------------------

2\. @classmethod và @staticmethod



&#x09;1. Instance method

&#x09;	→ Dùng self, làm việc với dữ liệu của object.



&#x09;2. Class method

&#x09;	→ Dùng cls, làm việc với class.



&#x09;3. Static method

&#x09;	→ Không cần self hay cls.

\--------------------------------------------

Code:

class Student:

&#x20;   school = "HUIT"



&#x20;   def \_\_init\_\_(self, name):

&#x20;       self.name = name



&#x20;   @classmethod

&#x20;   def create\_student(cls, name):

&#x20;       return cls(name)



&#x20;   @staticmethod

&#x20;   def add(a, b):

&#x20;       return a + b





student = Student.create\_student("Hoang")



print(student.name)

print(Student.add(5, 3))

\------------------------------------------------

3\. Class inheritance

* Inheritance = kế thừa.



* Một class con có thể sử dụng thuộc tính và phương thức của class cha.



\------------------------------------------------

class Animal:

&#x20;   def speak(self):

&#x20;       print("Animal speaks")





class Dog(Animal):

&#x20;   def bark(self):

&#x20;       print("Woof!")





dog = Dog()



dog.speak()

dog.bark()



\------------------------------------------------

4\. Class composition

* Composition = một class chứa object của class khác.

\------------------------------------------------



class Engine:

&#x20;   def start(self):

&#x20;       print("Engine starts")





class Car:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.engine = Engine()



&#x20;   def start(self):

&#x20;       self.engine.start()





car = Car()



car.start()

\--------------------------------------------------

Code LeetCode:

Bài 1 — Implement Trie (Insert + Search)



class TrieNode:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.children = {}

&#x20;       self.is\_end = False





class Trie:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = TrieNode()



&#x20;   def insert(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               current.children\[ch] = TrieNode()



&#x20;           current = current.children\[ch]



&#x20;       current.is\_end = True



&#x20;   def search(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               return False



&#x20;           current = current.children\[ch]



&#x20;       return current.is\_end

\----------------------------------------------------

* current chạy qua từng ký tự → nếu ký tự chưa có thì tạo node → đi xuống node đó → hết từ thì đánh dấu is\_end = True.























































