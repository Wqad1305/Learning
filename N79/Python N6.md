1. Dictionaries: Kiểu dữ liệu lưu trữ theo cặp key : value.

2. Destructuring Variables: Gán nhiều giá trị cho nhiều biến trong một câu lệnh.

3. Functions: Khối lệnh thực hiện một nhiệm vụ cụ thể và có thể tái sử dụng.

4. Arguments và Parameters: Parameter là tham số khai báo trong hàm, Argument là giá trị truyền vào khi gọi hàm.

5. Default Parameter Values: Tham số có giá trị mặc định khi không truyền đối số.



\------------------------------------------------

student = {

&#x20;   "name": "Hoang",

&#x20;   "age": 20

}



print(student\["name"])



student\["major"] = "IT"      

student\["age"] = 21         



for key, value in student.items():

&#x20;   print(key, value)



del student\["major"] 

\----------------------------------------------

a, b = 10, 20

print(a, b)



nums = \[1, 2, 3]

x, y, z = nums

print(x, y, z)



first, \*middle, last = \[1, 2, 3, 4, 5]

print(first)

print(middle)

print(last)

\----------------------------------------------

def greet(name):

&#x20;   print("Hello", name)



greet("Hoang")





def add(a, b):

&#x20;   return a + b



result = add(3, 5)

print(result)

\---------------------------------------------

def multiply(a, b):

&#x20;   return a \* b



print(multiply(2, 4))

print(multiply(b=4, a=2))

\----------------------------------------------

def total(\*nums):

&#x20;   print(sum(nums))



total(1, 2, 3, 4, 5)



\-----------------------------------------------

def info(\*\*person):

&#x20;   for key, value in person.items():

&#x20;       print(key, value)



info(name="Hoang", age=20)



\----------------------------------------------

def say\_hello(name="Guest"):

&#x20;   print("Hello", name)



say\_hello()

say\_hello("Hoang")

