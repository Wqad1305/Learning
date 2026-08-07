1. Dictionaries → lưu dữ liệu dạng key - value, dùng key để truy cập value.

2. Unpacking arguments → dùng \* để unpack list/tuple thành các positional arguments khi truyền vào hàm.

3. Unpacking keyword arguments → dùng \*\* để unpack dictionary thành các keyword arguments (key=value).

4. OOP (Object-Oriented Programming) → tổ chức chương trình bằng class và object, gồm attribute và method; \_\_init\_\_ dùng khởi tạo object, self đại diện cho object hiện tại.

5. Magic methods \_\_str\_\_ và \_\_repr\_\_ → \_\_str\_\_ quy định cách object hiển thị cho người dùng, còn \_\_repr\_\_ tạo biểu diễn rõ ràng hơn, thường dùng để debug.



\-------------------------------------------------------

Code

1\. Dictionaries



student = {

&#x20;   "name": "Hoang",

&#x20;   "age": 20,

&#x20;   "score": 8

}



print(student\["name"])



student\["score"] = 9

student\["class"] = "CNTT"



for key, value in student.items():

&#x20;   print(key, value)

\--------------------------------------------------------2. Unpacking arguments\*



def add(a, b, c):

&#x20;   return a + b + c





numbers = \[1, 2, 3]



print(add(\*numbers))

\--------------------------------------------------------

3\. Unpacking keyword arguments\*\*



def introduce(name, age):

&#x20;   print("Name:", name)

&#x20;   print("Age:", age)





student = {

&#x20;   "name": "Hoang",

&#x20;   "age": 20

}



introduce(\*\*student)

\--------------------------------------------------------

5\. Magic methods \_\_str\_\_ và \_\_repr\_\_



class Student:

&#x20;   def \_\_init\_\_(self, name, age):

&#x20;       self.name = name

&#x20;       self.age = age



&#x20;   def \_\_str\_\_(self):

&#x20;       return f"Student: {self.name}, {self.age}"



&#x20;   def \_\_repr\_\_(self):

&#x20;       return f"Student('{self.name}', {self.age})"





student = Student("Hoang", 20)



print(student)       

print(repr(student)) 

========================================================

Code Leetcode:

1\. Maximum Depth of Binary Tree



class Solution(object):

&#x20;   def maxDepth(self, root):

&#x20;       if root is None:

&#x20;           return 0



&#x20;       left = self.maxDepth(root.left)

&#x20;       right = self.maxDepth(root.right)



&#x20;       return 1 + max(left, right)



\--------------------------------------------------------

* root rỗng → 0. Nếu không → lấy độ sâu lớn nhất của cây trái và cây phải, rồi +1 cho node hiện tại.

\--------------------------------------------------------

2\. Same Tree



class Solution(object):

&#x20;   def isSameTree(self, p, q):

&#x20;       if p is None and q is None:

&#x20;           return True



&#x20;       if p is None or q is None:

&#x20;           return False



&#x20;       if p.val != q.val:

&#x20;           return False



&#x20;       return (

&#x20;           self.isSameTree(p.left, q.left)

&#x20;           and

&#x20;           self.isSameTree(p.right, q.right)

&#x20;       )

\--------------------------------------------------------

So sánh từng node:

* Cả hai None → giống.
* Một None → khác.
* val khác → khác.
* Sau đó so sánh cây trái và cây phải.





