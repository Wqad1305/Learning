def is\_palindrome(self):

&#x20;   if not self.head:

&#x20;       return True



&#x20;   left = self.head

&#x20;   right = self.tail



&#x20;   while left != right and left.prev != right:

&#x20;       if left.value != right.value:

&#x20;           return False

&#x20;       left = left.next

&#x20;       right = right.prev



&#x20;   return True

def reverse(self):

&#x20;   cur = self.head



&#x20;   while cur:

&#x20;       cur.next, cur.prev = cur.prev, cur.next

&#x20;       cur = cur.prev



&#x20;   self.head, self.tail = self.tail, self.head

def reverse\_between(self, start\_index, end\_index):

&#x20;   if not self.head:

&#x20;       return



&#x20;   dummy = Node(0)

&#x20;   dummy.next = self.head

&#x20;   self.head.prev = dummy



&#x20;   prev = dummy



&#x20;   for \_ in range(start\_index):

&#x20;       prev = prev.next



&#x20;   current = prev.next



&#x20;   for \_ in range(end\_index - start\_index):

&#x20;       temp = current.next



&#x20;       current.next = temp.next

&#x20;       if temp.next:

&#x20;           temp.next.prev = current



&#x20;       temp.prev = prev

&#x20;       temp.next = prev.next



&#x20;       prev.next.prev = temp

&#x20;       prev.next = temp



&#x20;   self.head = dummy.next

&#x20;   self.head.prev = None

def partition(self, x):

&#x20;   small\_head = small = Node(0)

&#x20;   large\_head = large = Node(0)



&#x20;   cur = self.head



&#x20;   while cur:

&#x20;       nxt = cur.next



&#x20;       cur.next = None

&#x20;       cur.prev = None



&#x20;       if cur.value < x:

&#x20;           small.next = cur

&#x20;           cur.prev = small

&#x20;           small = cur

&#x20;       else:

&#x20;           large.next = cur

&#x20;           cur.prev = large

&#x20;           large = cur



&#x20;       cur = nxt



&#x20;   small.next = large\_head.next

&#x20;   if large\_head.next:

&#x20;       large\_head.next.prev = small



&#x20;   self.head = small\_head.next

&#x20;   if self.head:

&#x20;       self.head.prev = None

def swap\_pairs(self):

&#x20;   cur = self.head



&#x20;   while cur and cur.next:

&#x20;       first = cur

&#x20;       second = cur.next

&#x20;       nxt = second.next



&#x20;       # connect previous part

&#x20;       if first.prev:

&#x20;           first.prev.next = second

&#x20;       else:

&#x20;           self.head = second



&#x20;       second.prev = first.prev



&#x20;       second.next = first

&#x20;       first.prev = second



&#x20;       first.next = nxt

&#x20;       if nxt:

&#x20;           nxt.prev = first



&#x20;       cur = nxt



\------------------------------------------------------------------------------------



1\. Palindrome

* Dùng 2 con trỏ: head và tail
* So sánh giá trị 2 đầu
* Di chuyển vào giữa
* Dừng khi gặp nhau hoặc vượt nhau

2\. Reverse full

* Duyệt toàn bộ list
* Mỗi node: đổi next ↔ prev
* Sau cùng: đổi head ↔ tail
* Di chuyển bằng con trỏ đã đổi (prev)

3\. Reverse between

* Chia 3 phần: trước – giữa – sau
* Chỉ reverse đoạn \[left → right]
* Sau đó nối lại 2 đầu đoạn
* Xử lý đặc biệt nếu left = 1 (đổi head)

4\. Partition

* Duyệt từng node
* So sánh với x:
* < x → đưa vào small list
* ≥ x → đưa vào large list
* Cuối cùng nối: small → large
* Giữ nguyên thứ tự trong từng nhóm

5\. Swap pairs

* Xử lý từng cặp node liên tiếp (1-2, 3-4,…)
* Đổi vị trí mỗi cặp
* Nhảy 2 node mỗi lần
* Cập nhật lại liên kết trước và sau cặp

=================================================================================================

Stack là cấu trúc dữ liệu hoạt động theo nguyên tắc LIFO (vào sau ra trước), có ưu điểm là thêm/xóa nhanh ở Top, nhưng chỉ truy cập được phần tử trên cùng.
Code:
class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None





class Stack:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       new\_node = Node(value)

&#x20;       self.top = new\_node

&#x20;       self.height = 1



&#x20;   def print\_stack(self):

&#x20;       temp = self.top

&#x20;       while temp:

&#x20;           print(temp.value)

&#x20;           temp = temp.next



&#x20;   def push(self, value):

&#x20;       new\_node = Node(value)



&#x20;       if self.height == 0:

&#x20;           self.top = new\_node

&#x20;       else:

&#x20;           new\_node.next = self.top

&#x20;           self.top = new\_node



&#x20;       self.height += 1

&#x20;       return True



&#x20;   def pop(self):

&#x20;       if self.height == 0:

&#x20;           return None



&#x20;       temp = self.top



&#x20;       if self.height == 1:

&#x20;           self.top = None

&#x20;       else:

&#x20;           self.top = self.top.next

&#x20;           temp.next = None



&#x20;       self.height -= 1

&#x20;       return temp



\-----------------------------------------------------------------------------------------------------------------

* Node → value, next.
* Constructor → top, height.
* Push → Thêm đầu (Top).
* Pop → Xóa đầu (Top).
* Print → Dùng temp duyệt từ top.

\------------------------------------------------------------------------------------------------------------------

Queue là cấu trúc dữ liệu hoạt động theo nguyên tắc FIFO (vào trước ra trước), có ưu điểm là thêm cuối và xóa đầu nhanh, nhưng chỉ thao tác được ở Front và Rear.

Code:

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;



class Queue:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       new\_node = Node(value)

&#x20;       self.first = new\_node

&#x20;       self.last = new\_node

&#x20;       self.length = 1



&#x20;   def print\_queue(self):

&#x20;       temp = self.first

&#x20;       while temp is not None:

&#x20;           print(temp.value)

&#x20;           temp = temp.next

&#x20;

&#x20;   def enqueue(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.first is None:

&#x20;           self.first = new\_node

&#x20;           self.last = new\_node

&#x20;       else:

&#x20;           self.last.next = new\_node

&#x20;           self.last = new\_node

&#x20;       self.length += 1

&#x20;       return True





&#x20;   def dequeue(self) :

&#x20;       temp=self.first

&#x20;       if self.first is None :

&#x20;           return None

&#x20;       else:

&#x20;           temp=self.first

&#x20;           self.first=self.first.next

&#x20;           temp.next=None

&#x20;       self.length-=1

&#x20;       return temp

&#x20;

\--------------------------------------------------------

* Node → value, next.
* Constructor → first, last, length.
* Enqueue → Thêm cuối (last).
* Dequeue → Xóa đầu (first).
* Print → Dùng temp duyệt từ first.

