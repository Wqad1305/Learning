1. Dictionaries:Sử dụng dictionary (dict) để lưu dữ liệu theo cặp key:value, thêm/cập nhật phần tử, dùng get() và in, đồng thời áp dụng để đếm số lần xuất hiện hoặc tra cứu dữ liệu nhanh với độ phức tạp trung bình O(1).

2. Unpacking Arguments (\*args): Cách dùng dấu \* để giải nén list/tuple thành các đối số của hàm và sử dụng \*args để nhận số lượng đối số vị trí không giới hạn.

3. Unpacking Keyword Arguments (\*\*kwargs): Hiểu cách dùng dấu \*\* để giải nén dictionary thành các đối số có tên và sử dụng \*\*kwargs để nhận số lượng keyword arguments không giới hạn.

4. Object-Oriented Programming (OOP): Hiểu khái niệm class và object, cách tạo đối tượng, sử dụng \_\_init\_\_() để khởi tạo, self để tham chiếu đến đối tượng hiện tại, cùng với việc định nghĩa thuộc tính và phương thức.

5. Magic Methods \_\_str\_\_ và \_\_repr\_\_: Biết sử dụng \_\_str\_\_() để hiển thị đối tượng theo cách dễ đọc cho người dùng và \_\_repr\_\_() để biểu diễn đối tượng theo cách chi tiết hơn, phục vụ lập trình viên và quá trình gỡ lỗi (debug).

\--------------------------------------------------------

text = "apple banana apple orange banana apple"



count = {}



for word in text.split():

&#x20;   count\[word] = count.get(word, 0) + 1



print(count)

\--------------------------------------------------------



def add(a, b, c):

&#x20;   return a + b + c



numbers = \[10, 20, 30]



print(add(\*numbers))

\--------------------------------------------------------



def total(\*numbers):

&#x20;   result = 0



&#x20;   for num in numbers:

&#x20;       result += num



&#x20;   return result



print(total(1, 2, 3))

print(total(5, 10, 20, 15))

\--------------------------------------------------------



def student(name, age):

&#x20;   print("Name:", name)

&#x20;   print("Age:", age)



info = {

&#x20;   "name": "Hoang",

&#x20;   "age": 20

}



student(\*\*info)

\--------------------------------------------------------



class Student:



&#x20;   def \_\_init\_\_(self, name, age):

&#x20;       self.name = name

&#x20;       self.age = age



&#x20;   def introduce(self):

&#x20;       print("Name:", self.name)

&#x20;       print("Age:", self.age)



student1 = Student("Hoang", 20)

student2 = Student("An", 21)



student1.introduce()

student2.introduce()



class Student:



&#x20;   def \_\_init\_\_(self, name, age):

&#x20;       self.name = name

&#x20;       self.age = age



&#x20;   def \_\_str\_\_(self):

&#x20;       return f"{self.name} - {self.age}"



&#x20;   def \_\_repr\_\_(self):

&#x20;       return f"Student(name='{self.name}', age={self.age})"





student = Student("Hoang", 20)



print(student)          

print(repr(student)) 

\--------------------------------------------------------

Code leetcode:

Bài 1. Reverse Linked List

class ListNode(object):

&#x20;   def \_\_init\_\_(self, val=0, next=None):

&#x20;       self.val = val

&#x20;       self.next = next





class Solution(object):

&#x20;   def reverseList(self, head):

&#x20;       prev = None

&#x20;       current = head



&#x20;       while current:

&#x20;           nxt = current.next      

&#x20;           current.next = prev    

&#x20;           prev = current         

&#x20;           current = nxt 



&#x20;       return prev

\--------------------------------------------------------



Dùng 3 con trỏ: prev(Node phía trước) /current(node đang xét) /nxt (lưu node tiếp theo).

Mỗi vòng lặp: Lưu current.next vào nxt,dảo chiều current.next = prev,di chuyển prev = current,di chuyển current = nxt.

Cuối cùng prev là head mới.

\--------------------------------------------------------

Bài 2. Middle of the Linked List

class ListNode(object):

&#x20;   def \_\_init\_\_(self, val=0, next=None):

&#x20;       self.val = val

&#x20;       self.next = next





class Solution(object):

&#x20;   def middleNode(self, head):

&#x20;       slow = head

&#x20;       fast = head



&#x20;       while fast and fast.next:

&#x20;           slow = slow.next

&#x20;           fast = fast.next.next



&#x20;       return slow

\--------------------------------------------------------

Dùng 2 con trỏ: slow đi 1 bước/ fast đi 2 bước.

Khi fast đến cuối danh sách thì slow sẽ ở giữa.

\--------------------------------------------------------

Bài 3. Remove Duplicates from Sorted List

class ListNode(object):

&#x20;   def \_\_init\_\_(self, val=0, next=None):

&#x20;       self.val = val

&#x20;       self.next = next





class Solution(object):

&#x20;   def deleteDuplicates(self, head):

&#x20;       current = head



&#x20;       while current and current.next:

&#x20;           if current.val == current.next.val:

&#x20;               current.next = current.next.next

&#x20;           else:

&#x20;               current = current.next



&#x20;       return head

\--------------------------------------------------------

Duyệt từ đầu bằng current.



Nếu current.val == current.next.val:

Bỏ node trùng bằng: current.next = current.next.next



Nếu khác:

Di chuyển current = current.next.

Trả về head sau khi xóa các phần tử trùng.







