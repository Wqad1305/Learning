46\. Simple Decorators in Python



Decorator = một hàm dùng để bọc (wrap) một hàm khác và thêm chức năng mà không cần sửa code bên trong hàm đó.



decorator nhận một function.



* Tạo một function mới.



* Function mới gọi function cũ.



* Trả về function mới.

\--------------------------------------------------------

def decorator(func):

&#x20;   def wrapper():

&#x20;       print("Trước khi chạy")





&#x20;       func()





&#x20;       print("Sau khi chạy")





&#x20;   return wrapper

\--------------------------------------------------------

47\. The @ Syntax for Decorators

* @decorator = cách viết ngắn hơn cho:



* hello = decorator(hello)

\--------------------------------------------------------



def decorator(func):

&#x20;   def wrapper():

&#x20;       print("Before")





&#x20;       func()





&#x20;       print("After")





&#x20;   return wrapper

\--------------------------------------------------------

48\. Decorating Functions with Parameters



Nếu function cần tham số thì wrapper cũng phải nhận tham số.



\--------------------------------------------------------



def decorator(func):

&#x20;   def wrapper(name):

&#x20;       print("Before")





&#x20;       func(name)





&#x20;       print("After")





&#x20;   return wrapper





\--------------------------------------------------------



49\. Decorators with Parameters



Decorator có thể nhận thêm tham số.



* Có 3 tầng function:



* decorator\_with\_args()

&#x20;       ↓

* decorator(func)

&#x20;       ↓

* wrapper()



\--------------------------------------------------------



def repeat(times):

&#x20;   def decorator(func):

&#x20;       def wrapper():

&#x20;           for i in range(times):

&#x20;               func()





&#x20;       return wrapper





&#x20;   return decorator









@repeat(3)

def hello():

&#x20;   print("Hello")









hello()



\--------------------------------------------------------

50\. Mutability in Python



* Mutable = có thể thay đổi nội dung sau khi tạo.



* Immutable = không thể thay đổi nội dung sau khi tạo.



\--------------------------------------------------------

numbers = \[1, 2, 3]





numbers.append(4)





print(numbers)



\--------------------------------------------------------



51\. Mutable Default Parameters



* Không nên dùng object mutable làm giá trị mặc định của parameter.



* Dùng None làm giá trị mặc định:

\--------------------------------------------------------



def add\_item(item, items=None):

&#x20;   if items is None:

&#x20;       items = \[]





&#x20;   items.append(item)





&#x20;   return items

\--------------------------------------------------------

Bài 1 — Letter Case Permutation

class Solution:

&#x20;   def letterCasePermutation(self, s):

&#x20;       result = \[]



&#x20;       def backtrack(index, current):

&#x20;           if index == len(s):

&#x20;               result.append("".join(current))

&#x20;               return



&#x20;           if s\[index].isalpha():

&#x20;               # Chọn chữ thường

&#x20;               current.append(s\[index].lower())

&#x20;               backtrack(index + 1, current)

&#x20;               current.pop()



&#x20;               # Chọn chữ hoa

&#x20;               current.append(s\[index].upper())

&#x20;               backtrack(index + 1, current)

&#x20;               current.pop()



&#x20;           else:

&#x20;               current.append(s\[index])

&#x20;               backtrack(index + 1, current)

&#x20;               current.pop()



&#x20;       backtrack(0, \[])



&#x20;       return result

\------------------------------------------------------------

* Backtracking = chọn → đi tiếp → quay lại (pop) → chọn hướng khác











































