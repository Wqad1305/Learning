class Stack:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.stack\_list=\[]

&#x20;   def push(self,value):

&#x20;       self.stack\_list.append(value)

&#x20;   def pop(self):

&#x20;       if len(self.stack\_list)==0:

&#x20;           return None

&#x20;       return self.stack\_list.pop()

&#x20;   def peek(self):

&#x20;       if len(self.stack\_list)==0:

&#x20;           return None

&#x20;       return self.stack\_list\[-1]

&#x20;   def is\_empty(self):

&#x20;       if len(self.stack\_list)==0:

&#x20;           return True

&#x20;       return False

&#x20;   def size(self):

&#x20;       return len(self.stack\_list)

&#x20;   def reverse\_string(s):

&#x20;   stack = \[]



&#x20;   for char in s:

&#x20;       stack.append(char)



&#x20;   result = ""



&#x20;   while stack:

&#x20;       result += stack.pop()



&#x20;   return result

&#x20;   def is\_balanced(s):

&#x20;   stack = \[]



&#x20;   pairs = {

&#x20;       ")": "(",

&#x20;       "}": "{",

&#x20;       "]": "\["

&#x20;   }



&#x20;   for char in s:

&#x20;       if char in "({\[":

&#x20;           stack.append(char)



&#x20;       elif char in ")}]":

&#x20;           if not stack:

&#x20;               return False



&#x20;           if stack.pop() != pairs\[char]:

&#x20;               return False



&#x20;   return len(stack) == 0

&#x09;

&#x20;       

stack=Stack()

stack.push(10)

stack.push(20)

stack.push(25)

print("Is empty:",stack.is\_empty())

print ("Size:",stack.size())

&#x20;   

print ("Stack:",stack.stack\_list)

print ("Peek:",stack.peek())

print("Pop:",stack.pop())

print("Peek:",stack.peek())





\----------------------------------------------------------------------



class MyQueue:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.stack1 = \[]

&#x20;       self.stack2 = \[]



&#x20;   def enqueue(self, value):

&#x20;       self.stack1.append(value)



&#x20;   def dequeue(self):

&#x20;       if self.is\_empty():

&#x20;           return None



&#x20;       if not self.stack2:

&#x20;           while self.stack1:

&#x20;               self.stack2.append(self.stack1.pop())



&#x20;       return self.stack2.pop()



&#x20;   def peek(self):

&#x20;       if self.is\_empty():

&#x20;           return None



&#x20;       if not self.stack2:

&#x20;           while self.stack1:

&#x20;               self.stack2.append(self.stack1.pop())



&#x20;       return self.stack2\[-1]



&#x20;   def is\_empty(self):

&#x20;       return len(self.stack1) == 0 and len(self.stack2) == 0

\-------------------------------------------------------

1. Stack là cấu trúc LIFO (vào sau ra trước) dùng để push, pop, peek dữ liệu theo thứ tự ngược.
2. Reverse string dùng stack bằng cách đẩy từng ký tự vào rồi pop ra để đảo ngược chuỗi.
3. Parentheses checker dùng stack để kiểm tra ngoặc mở/đóng có khớp đúng thứ tự hay không.
4. Queue dùng 2 stack để mô phỏng FIFO: enqueue vào stack1, dequeue lấy từ stack2 và chuyển dữ liệu khi cần.

