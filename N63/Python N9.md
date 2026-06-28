1. Trees: Intro \& Terminology: Học các khái niệm của cây (Root, Parent, Child, Leaf, Height, Depth, Full, Perfect...).
2. Binary Search Trees: Example: Hiểu quy tắc BST: Left Subtree < Root < Right Subtree.
3. BST: Big O: Hiểu vì sao BST cân đối có O(log n), còn BST lệch là O(n).
4. BST: Constructor: Biết cấu trúc Node (value, left, right) và BinarySearchTree (root).
5. BST: Insert - Intro: Hiểu tư duy chèn node bằng cách so sánh và đi trái/phải đến khi gặp None.
6. BST: Insert - Code: Viết được hàm insert() để thêm node vào đúng vị trí trong BST.
7. BST: Contains: Viết được hàm contains() để kiểm tra một giá trị có tồn tại trong BST hay không.

\----------------------------------------------------

Code:

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.left = None

&#x20;       self.right = None

&#x20;       



class BinarySearchTree:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = None



&#x20;   def insert(self, value):

&#x20;       new\_node = Node(value)

&#x20;       if self.root is None:

&#x20;           self.root = new\_node

&#x20;           return True

&#x20;       temp = self.root

&#x20;       while (True):

&#x20;           if new\_node.value == temp.value:

&#x20;               return False

&#x20;           if new\_node.value < temp.value:

&#x20;               if temp.left is None:

&#x20;                   temp.left = new\_node

&#x20;                   return True

&#x20;               temp = temp.left

&#x20;           else: 

&#x20;               if temp.right is None:

&#x20;                   temp.right = new\_node

&#x20;                   return True

&#x20;               temp = temp.right



&#x20;   def contains(self,value):

&#x20;       

&#x20;       current=self.root

&#x20;       while current:

&#x20;           if value <current.value:

&#x20;               current=current.left



&#x20;           elif value > current.value:

&#x20;               current=current.right



&#x20;           else:

&#x20;               return True

&#x20;           return False

&#x20;       



def check(expect, actual, message):

&#x20;   print(message)

&#x20;   print("EXPECTED:", expect)

&#x20;   print("RETURNED:", actual)

&#x20;   print("PASS" if expect == actual else "FAIL", "\\n")



print("\\n----- Test: Contains on Empty Tree -----\\n")

bst = BinarySearchTree()

result = bst.contains(5)

check(False, result, "Check if 5 exists in an empty tree:")



print("\\n----- Test: Contains Existing Value -----\\n")

bst = BinarySearchTree()

bst.insert(10)

bst.insert(5)

bst.insert(15)

result = bst.contains(10)

check(True, result, "Check if 10 exists:")

result = bst.contains(5)

check(True, result, "Check if 5 exists:")

result = bst.contains(15)

check(True, result, "Check if 15 exists:")



print("\\n----- Test: Contains Not Existing Value -----\\n")

bst = BinarySearchTree()

bst.insert(10)

bst.insert(5)

result = bst.contains(15)

check(False, result, "Check if 15 exists:")



print("\\n----- Test: Contains with Duplicate Inserts -----\\n")

bst = BinarySearchTree()

bst.insert(10)

bst.insert(10)

result = bst.contains(10)

check(True, result, "Check if 10 exists with duplicate inserts:")



print("\\n----- Test: Contains with Left and Right -----\\n")

bst = BinarySearchTree()

bst.insert(10)

bst.insert(5)

bst.insert(15)

bst.insert(1)

bst.insert(8)

bst.insert(12)

bst.insert(20)

result = bst.contains(1)

check(True, result, "Check if 1 exists:")

result = bst.contains(8)

check(True, result, "Check if 8 exists:")

result = bst.contains(12)

check(True, result, "Check if 12 exists:")

result = bst.contains(20)

check(True, result, "Check if 20 exists:")

========================================================

1. Intro:Hash Table lưu dữ liệu theo cặp key-value và dùng hash function để ánh xạ key thành vị trí trong mảng.
2. Collisions: Hiểu collision là nhiều key cùng cho một index và biết cách xử lý bằng chaining (lưu nhiều phần tử trong cùng một bucket).
3. Constructor: Biết cấu trúc của Hash Table gồm một mảng (data\_map) với kích thước cố định để lưu dữ liệu.
4. Set: Viết được hàm set\_item() để thêm hoặc lưu một cặp key-value vào Hash Table.
5. Get: Viết được hàm get\_item() để tìm và trả về value dựa trên key.
6. Keys: Viết được hàm keys() để lấy danh sách tất cả các key đang có trong Hash Table.
7. Big O: Hiểu Search, Insert, Delete có O(1) trung bình và O(n) trong trường hợp xấu nhất do collision.
8. Interview Question: Biết cách áp dụng Hash Table để giải các bài toán tối ưu trong phỏng vấn (tra cứu nhanh, đếm tần suất, tìm phần tử...).

\-------------------------------------------------------

Code:

class HashTable:

&#x20;   def \_\_init\_\_(self, size = 7):

&#x20;       self.data\_map = \[None] \* size

&#x20;     

&#x20;   def \_\_hash(self, key):

&#x20;       my\_hash = 0

&#x20;       for letter in key:

&#x20;           my\_hash = (my\_hash + ord(letter) \* 23) % len(self.data\_map)

&#x20;       return my\_hash  



&#x20;   def print\_table(self):

&#x20;       for i, val in enumerate(self.data\_map): 

&#x20;           print(i, ": ", val)

&#x20;   

&#x20;   def set\_item(self, key, value):

&#x20;       index = self.\_\_hash(key)

&#x20;       if self.data\_map\[index] == None:

&#x20;           self.data\_map\[index] = \[]

&#x20;       self.data\_map\[index].append(\[key, value])

&#x20;   

&#x20;   def get\_item(self, key):

&#x20;       index = self.\_\_hash(key)

&#x20;       if self.data\_map\[index] is not None:

&#x20;           for i in range(len(self.data\_map\[index])):

&#x20;               if self.data\_map\[index]\[i]\[0] == key:

&#x20;                   return self.data\_map\[index]\[i]\[1]

&#x20;       return None

&#x20;   def keys (self):

&#x20;       all\_keys =\[]

&#x20;       

&#x20;       for i in range (len(self.data\_map)):

&#x20;           if self.data\_map\[i]is not None:

&#x20;               for j in range (len(self.data\_map\[i])):

&#x20;                   all\_keys.append(self.data\_map\[i]\[j]\[0])

&#x20;       return all\_keys

&#x20;           



my\_hash\_table = HashTable()



my\_hash\_table.set\_item('bolts', 1400)

my\_hash\_table.set\_item('washers', 50)

my\_hash\_table.set\_item('lumber', 70)



print(my\_hash\_table.keys())







"""

&#x20;   EXPECTED OUTPUT:

&#x20;   ----------------

&#x20;   \['bolts', 'washers', 'lumber']



"""

///////////////////////////////////////////////////////////////////

question interview:

def item\_in\_common(self, list1, list2):

&#x20;   my\_dict = {}



&#x20;   for i in list1:

&#x20;       my\_dict\[i] = True



&#x20;   for j in list2:

&#x20;       if j in my\_dict:

&#x20;           return True



&#x20;   return False












































