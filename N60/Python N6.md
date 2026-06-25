Code:

&#x20;   def reverse\_between(self, left, right):



&#x20;       if self.head is None:

&#x20;           return

&#x20;   

&#x20;       dummy = Node(0)

&#x20;       dummy.next = self.head

&#x20;   

&#x20;       prev = dummy

&#x20;   

&#x20;       for \_ in range(left):

&#x20;           prev = prev.next

&#x20;   

&#x20;       current = prev.next

&#x20;   

&#x20;       for \_ in range(right - left):

&#x20;   

&#x20;           to\_move = current.next

&#x20;   

&#x20;           current.next = to\_move.next

&#x20;           to\_move.next = prev.next

&#x20;           prev.next = to\_move



&#x20;       self.head = dummy.next

def swap\_pairs(self):

&#x20;           dummy=Node(0)

&#x20;           dummy.next=self.head

&#x20;           

&#x20;           prev=dummy

&#x20;           

&#x20;           while prev.next and prev.next.next:

&#x20;               first=prev.next

&#x20;               second=prev.next.next

&#x20;               

&#x20;               first.next=second.next

&#x20;               second.next=first

&#x20;               prev.next=second 

&#x20;               

&#x20;               prev=first

&#x20;               

&#x20;           self.head=dummy.next

\-----------------------------------------------------

\*reverse\_between: dùng 3 con trỏ để “rút từng node trong đoạn left–right rồi chèn lên trước” ngay trong danh sách gốc.

\*swap\_pairs :tạo một node giả (dummy), dùng first và second để lấy từng cặp node rồi đảo liên kết giữa chúng, sau đó cập nhật prev thành first (lúc này đã ở cuối cặp vừa đảo) để tiếp tục xử lý cặp kế tiếp.



========================================================

Linked List chỉ có con trỏ next nên đi một chiều; Doubly Linked List có thêm prev nên đi được hai chiều và thao tác xóa/chèn thuận tiện hơn nhưng tốn thêm bộ nhớ.



Code:

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;       self.prev = None

&#x20;       



class DoublyLinkedList:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       new\_node = Node(value)

&#x20;       self.head = new\_node

&#x20;       self.tail = new\_node

&#x20;       self.length = 1



&#x20;   def print\_list(self):

&#x20;       temp = self.head

&#x20;       while temp is not None:

&#x20;           print(temp.value)

&#x20;           temp = temp.next

&#x20;       

&#x20;   def append(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.head is None:

&#x20;           self.head = new\_node

&#x20;           self.tail = new\_node

&#x20;       else:

&#x20;           self.tail.next = new\_node

&#x20;           new\_node.prev = self.tail

&#x20;           self.tail = new\_node

&#x20;       self.length += 1

&#x20;       return True



&#x20;   def pop(self):

&#x20;       if self.length == 0:

&#x20;           return None

&#x20;       temp = self.tail

&#x20;       if self.length == 1:

&#x20;           self.head = None

&#x20;           self.tail = None 

&#x20;       else:       

&#x20;           self.tail = self.tail.prev

&#x20;           self.tail.next = None

&#x20;           temp.prev = None

&#x20;       self.length -= 1

&#x20;       return temp



&#x20;   def prepend(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.length == 0:

&#x20;           self.head = new\_node

&#x20;           self.tail = new\_node

&#x20;       else:

&#x20;           new\_node.next = self.head

&#x20;           self.head.prev = new\_node

&#x20;           self.head = new\_node

&#x20;       self.length += 1

&#x20;       return True



&#x20;   def pop\_first(self):

&#x20;       if self.length == 0:

&#x20;           return None

&#x20;       temp = self.head

&#x20;       if self.length == 1:

&#x20;           self.head = None

&#x20;           self.tail = None

&#x20;       else:

&#x20;           self.head = self.head.next

&#x20;           self.head.prev = None

&#x20;           temp.next = None      

&#x20;       self.length -= 1

&#x20;       return temp



&#x20;   def get(self, index):

&#x20;       if index < 0 or index >= self.length:

&#x20;           return None

&#x20;       temp = self.head

&#x20;       if index < self.length/2:

&#x20;           for \_ in range(index):

&#x20;               temp = temp.next

&#x20;       else:

&#x20;           temp = self.tail

&#x20;           for \_ in range(self.length - 1, index, -1):

&#x20;               temp = temp.prev  

&#x20;       return temp

&#x20;       

&#x20;   def set\_value(self, index, value):

&#x20;       temp = self.get(index)

&#x20;       if temp:

&#x20;           temp.value = value

&#x20;           return True

&#x20;       return False

&#x20;   

&#x20;   def insert(self, index, value):

&#x20;       if index < 0 or index > self.length:

&#x20;           return False

&#x20;       if index == 0:

&#x20;           return self.prepend(value)

&#x20;       if index == self.length:

&#x20;           return self.append(value)



&#x20;       new\_node = Node(value)

&#x20;       before = self.get(index - 1)

&#x20;       after = before.next



&#x20;       new\_node.prev = before

&#x20;       new\_node.next = after

&#x20;       before.next = new\_node

&#x20;       after.prev = new\_node

&#x20;       

&#x20;       self.length += 1   

&#x20;       return True  



&#x20;   def remove(self,index):

&#x20;       if index<0 or index>=self.length:

&#x20;           return None

&#x20;       if index==0:

&#x20;           return self.pop\_first()

&#x20;       if index== self.length-1:

&#x20;           return self.pop()

&#x20;           

&#x20;       temp=self.get(index)

&#x20;       temp.prev.next=temp.next

&#x20;       temp.next.prev=temp.prev

&#x20;       temp.next=None

&#x20;       temp.prev=None

&#x20;       self.length-=1

&#x20;       return temp

&#x20;       

&#x20;       

&#x20;       

\--------------------------------------------------------

1. Constructor Node: Tạo một node gồm value, next, prev.
2. Constructor Doubly Linked List: Khởi tạo danh sách với head, tail, length.
3. Append: Thêm node vào cuối danh sách.
4. Prepend: Thêm node vào đầu danh sách.
5. Pop: Xóa node cuối và trả về node bị xóa.
6. Pop First: Xóa node đầu và trả về node bị xóa.
7. Get: Lấy node tại vị trí index.
8. Set: Thay đổi giá trị của node tại index.
9. Insert: Chèn một node vào vị trí bất kỳ trong danh sách.
10. Remove: Xóa một node tại vị trí bất kỳ trong danh sách.

