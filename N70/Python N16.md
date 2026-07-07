def bubble\_sort(my\_list):

&#x20;   for i in range (len(my\_list)-1,0,-1):

&#x20;       for j in range (i):

&#x20;           if my\_list\[j]>my\_list\[j+1]:

&#x20;               temp=my\_list\[j]

&#x20;               my\_list\[j]=my\_list\[j+1]

&#x20;               my\_list\[j+1]=temp

&#x20;   return my\_list

&#x20;               









print(bubble\_sort(\[4,2,6,5,1,3]))



&#x20;-------------------------------------------------------

def selection\_sort(my\_list):

&#x20;   for i in range (len(my\_list)-1):

&#x20;       min\_index=i

&#x20;       for j in range(i+1,len(my\_list)):

&#x20;           if my\_list\[j]<my\_list\[min\_index]:

&#x20;               min\_index=j

&#x20;       if i!=min\_index:

&#x20;               temp=my\_list\[i]

&#x20;               my\_list\[i]=my\_list\[min\_index]

&#x20;               my\_list\[min\_index]=temp

&#x20;   return my\_list

&#x20;               









print(selection\_sort(\[4,2,6,5,1,3]))

\--------------------------------------------------------

def insertion\_sort(my\_list):



&#x20;   for i in range(1, len(my\_list)):



&#x20;       temp = my\_list\[i]



&#x20;       j = i - 1



&#x20;       while j > -1 and temp < my\_list\[j]:



&#x20;           my\_list\[j + 1] = my\_list\[j]



&#x20;           j -= 1



&#x20;       my\_list\[j + 1] = temp



&#x20;   return my\_list









print(insertion\_sort(\[4,2,6,5,1,3]))



\--------------------------------------------------------

1\. Bubble Sort

* So sánh từng cặp phần tử liền kề từ đầu đến cuối mảng.
* Nếu phần tử bên trái lớn hơn bên phải thì đổi chỗ (swap).
* Sau mỗi vòng, phần tử lớn nhất sẽ được đẩy về cuối; lặp lại cho đến khi mảng được sắp xếp.

2\. Selection Sort

* Chọn vị trí i và giả sử phần tử tại đó là nhỏ nhất (min\_index = i).
* Duyệt toàn bộ phần còn lại của mảng để tìm phần tử nhỏ nhất, nếu tìm thấy thì cập nhật min\_index.
* Sau khi duyệt xong, đổi chỗ phần tử nhỏ nhất với phần tử tại i; lặp lại cho các vị trí tiếp theo.

3\. Insertion Sort

* Chọn phần tử tại i làm temp, coi các phần tử bên trái đã được sắp xếp.
* So sánh temp với các phần tử bên trái từ phải sang trái, nếu phần tử lớn hơn temp thì dịch sang phải.
* Khi tìm được đúng vị trí, chèn temp vào đó; lặp lại cho đến khi toàn bộ mảng được sắp xếp.

=======================================================

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;       



class LinkedList:

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

&#x20;           self.tail = new\_node

&#x20;       self.length += 1





&#x20;   def bubble\_sort(self):

&#x20;       if self.length<2:

&#x20;           return None

&#x20;       for i in range (self.length-1,0,-1):

&#x20;           current=self.head

&#x20;           for j in range (i):

&#x20;               next\_node=current.next

&#x20;               if current.value>next\_node.value:

&#x20;                   temp=current.value

&#x20;                   current.value=next\_node.value

&#x20;                   next\_node.value=temp

&#x20;               current=current.next

&#x20;       

&#x20;                   

&#x20;               

&#x20;       









my\_linked\_list = LinkedList(4)

my\_linked\_list.append(2)

my\_linked\_list.append(6)

my\_linked\_list.append(5)

my\_linked\_list.append(1)

my\_linked\_list.append(3)



print("Linked List Before Sort:")

my\_linked\_list.print\_list()



my\_linked\_list.bubble\_sort()



print("\\nSorted Linked List:")

my\_linked\_list.print\_list()

\---------------------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;       



class LinkedList:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       new\_node = Node(value)

&#x20;       self.head = new\_node

&#x20;       self.length = 1



&#x20;   def print\_list(self):

&#x20;       temp = self.head

&#x20;       values = \[]

&#x20;       while temp is not None:

&#x20;           values.append(str(temp.value))

&#x20;           temp = temp.next

&#x20;       if values:

&#x20;           print(" -> ".join(values))

&#x20;       else:

&#x20;           print("empty")

&#x20;       

&#x20;   def append(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.head is None:

&#x20;           self.head = new\_node

&#x20;       else:

&#x20;           current = self.head

&#x20;           while current.next is not None:

&#x20;               current = current.next

&#x20;           current.next = new\_node

&#x20;       self.length += 1





&#x20;   def selection\_sort(self):

&#x20;       current = self.head



&#x20;       while current:

&#x20;           smallest = current

&#x20;           temp = current.next



&#x20;           while temp:

&#x20;               if temp.value < smallest.value:

&#x20;                   smallest = temp

&#x20;               temp = temp.next



&#x20;           current.value, smallest.value = smallest.value, current.value

&#x20;           current = current.next

&#x20;               

\--------------------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.next = None

&#x20;       



class LinkedList:

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

&#x20;           self.tail = new\_node

&#x20;       self.length += 1



&#x20;   def insertion\_sort(self):

&#x20;       if self.head is None:

&#x20;           return



&#x20;       sorted\_list = None

&#x20;       current = self.head



&#x20;       while current:

&#x20;           temp = current.next



&#x20;           if sorted\_list is None or current.value < sorted\_list.value:

&#x20;               current.next = sorted\_list

&#x20;               sorted\_list = current

&#x20;           else:

&#x20;               search = sorted\_list

&#x20;               while search.next and search.next.value < current.value:

&#x20;                   search = search.next

&#x20;               current.next = search.next

&#x20;               search.next = current

&#x20;           current = temp

&#x20;       self.head = sorted\_list











my\_linked\_list = LinkedList(4)

my\_linked\_list.append(2)

my\_linked\_list.append(6)

my\_linked\_list.append(5)

my\_linked\_list.append(1)

my\_linked\_list.append(3)



print("Linked List Before Sort:")

my\_linked\_list.print\_list()



my\_linked\_list.insertion\_sort()



print("\\nSorted Linked List:")

my\_linked\_list.print\_list()







"""























