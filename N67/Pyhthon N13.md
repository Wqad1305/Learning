class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.left = None

&#x20;       self.right = None



class BinarySearchTree:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = None

&#x20;   

&#x20;   # The 'is\_balanced' and 'inorder\_traversal' methods will 

&#x20;   # be used to test your code

&#x20;   def is\_balanced(self, node=None):

&#x20;       def check\_balance(node):

&#x20;           if node is None:

&#x20;               return True, -1

&#x20;           left\_balanced, left\_height = check\_balance(node.left)

&#x20;           if not left\_balanced:

&#x20;               return False, 0

&#x20;           right\_balanced, right\_height = check\_balance(node.right)

&#x20;           if not right\_balanced:

&#x20;               return False, 0

&#x20;           balanced = abs(left\_height - right\_height) <= 1

&#x20;           height = 1 + max(left\_height, right\_height)

&#x20;           return balanced, height



&#x20;       balanced, \_ = check\_balance(self.root if node is None else node)

&#x20;       return balanced

&#x20;       

&#x20;   def inorder\_traversal(self, node=None):

&#x20;       if node is None:

&#x20;           node = self.root

&#x20;       result = \[]

&#x20;       self.\_inorder\_helper(node, result)

&#x20;       return result

&#x20;   

&#x20;   def \_inorder\_helper(self, node, result):

&#x20;       if node:

&#x20;           self.\_inorder\_helper(node.left, result)

&#x20;           result.append(node.value)

&#x20;           self.\_inorder\_helper(node.right, result)

&#x20;               

&#x20;               

&#x20;   def sorted\_list\_to\_bst(self, nums):

&#x20;       self.root = self.\_\_sorted\_list\_to\_bst(nums, 0, len(nums) - 1)



&#x20;   def \_\_sorted\_list\_to\_bst(self, nums, left, right):

&#x20;       if left >right:

&#x20;           return None

&#x20;       mid=(left+right)//2

&#x20;       current=Node(nums\[mid])

&#x20;       current.left=self.\_\_sorted\_list\_to\_bst(nums,left,mid-1)

&#x20;       current.right=self.\_\_sorted\_list\_to\_bst(nums,mid+1,right)

&#x20;       return current

&#x20; def check\_balanced\_and\_correct\_traversal(bst, expected\_traversal):

&#x20;   is\_balanced = bst.is\_balanced()

&#x20;   inorder = bst.inorder\_traversal()

&#x20;   print("Is balanced:", is\_balanced)

&#x20;   print("Inorder traversal:", inorder)

&#x20;   print("Expected traversal:", expected\_traversal)

&#x20;   if is\_balanced and inorder == expected\_traversal:

&#x20;       print("PASS: Tree is balanced and inorder traversal is correct.\\n")

&#x20;   else:

&#x20;       print("FAIL: Tree is either not balanced or inorder traversal is incorrect.\\n")



\--------------------------------------------------------

class Node:

&#x20;   def \_\_init\_\_(self, value):

&#x20;       self.value = value

&#x20;       self.left = None

&#x20;       self.right = None

&#x20;       

class BinarySearchTree:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = None

&#x20;                 

&#x20;   def \_\_r\_insert(self, current\_node, value):

&#x20;       if current\_node == None: 

&#x20;           return Node(value)   

&#x20;       if value < current\_node.value:

&#x20;           current\_node.left = self.\_\_r\_insert(current\_node.left, value)

&#x20;       elif value > current\_node.value:  # Changed to elif to avoid comparing twice if equal

&#x20;           current\_node.right = self.\_\_r\_insert(current\_node.right, value) 

&#x20;       return current\_node    



&#x20;   def r\_insert(self, value):

&#x20;       if self.root == None: 

&#x20;           self.root = Node(value)

&#x20;       else:

&#x20;           self.\_\_r\_insert(self.root, value)  



&#x20;   def invert(self):

&#x20;       self.root = self.\_\_invert\_tree(self.root)

&#x20;   def \_\_invert\_tree(self,node):

&#x20;       if node is None:

&#x20;           return None

&#x20;       temp=node.left

&#x20;       node.left=node.right

&#x20;       node.right=temp

&#x20;       self.\_\_invert\_tree(node.left)

&#x20;       self.\_\_invert\_tree(node.right)

&#x20;       return node



def tree\_to\_list(node):

&#x20;   """Helper function to convert tree to list level-wise for easy comparison"""

&#x20;   if not node:

&#x20;       return \[]

&#x20;   queue = \[node]

&#x20;   result = \[]

&#x20;   while queue:

&#x20;       current = queue.pop(0)

&#x20;       if current:

&#x20;           result.append(current.value)

&#x20;           queue.append(current.left)

&#x20;           queue.append(current.right)

&#x20;       else:

&#x20;           result.append(None)

&#x20;   while result and result\[-1] is None:  # Clean up trailing None values

&#x20;       result.pop()

&#x20;   return result



def test\_invert\_binary\_search\_tree():

&#x20;   print("\\n--- Testing Inversion of Binary Search Tree ---")

&#x20;   # Define test scenarios

&#x20;   scenarios = \[

&#x20;       ("Empty Tree", \[], \[]),

&#x20;       ("Single Node", \[1], \[1]),

&#x20;       ("Tree with Left Child", \[2, 1], \[2, None, 1]),

&#x20;       ("Tree with Right Child", \[1, 2], \[1, 2]),

&#x20;       ("Multi-Level Tree", \[3, 1, 5, 2], \[3, 5, 1, None, None, 2]),

&#x20;       ("Invert Twice", \[4, 2, 6, 1, 3, 5, 7], \[4, 2, 6, 1, 3, 5, 7]),

&#x20;   ]



&#x20;   for description, setup, expected in scenarios:

&#x20;       bst = BinarySearchTree()

&#x20;       for num in setup:

&#x20;           bst.r\_insert(num)

&#x20;       if description == "Invert Twice":

&#x20;           bst.invert()  # First inversion

&#x20;       bst.invert()  # Perform inversion (or second inversion for the specific case)

&#x20;       result = tree\_to\_list(bst.root)

&#x20;       print(f"\\n{description}: {'Pass' if result == expected else 'Fail'}")

&#x20;       print(f"Expected: {expected}")

&#x20;       print(f"Actual:   {result}")



test\_invert\_binary\_search\_tree()

\--------------------------------------------------

1. Sorted List to BST
* left > right → trả None vì đoạn mảng không còn phần tử.
* mid = (left + right) // 2 → lấy phần tử giữa làm gốc để cây cân bằng.
* current = Node(nums\[mid]) → tạo node mới từ phần tử giữa.
* current.left = \_\_sorted\_list\_to\_bst(nums, left, mid - 1) → đệ quy tạo cây con trái từ đoạn left đến mid - 1.
* current.right = \_\_sorted\_list\_to\_bst(nums, mid + 1, right) → đệ quy tạo cây con phải từ đoạn mid + 1 đến right.
* return current → trả về gốc của cây BST vừa tạo.

2\. Invert Binary Tree

* node is None → trả None vì không còn node để xử lý.
* temp = node.left → lưu cây con trái tạm thời.
* node.left = node.right → đổi cây con phải sang bên trái.
* node.right = temp → đổi cây con trái cũ sang bên phải.
* \_\_invert\_tree(node.left) → đệ quy đảo cây con bên trái.
* \_\_invert\_tree(node.right) → đệ quy đảo cây con bên phải.
* return node → trả về node sau khi toàn bộ cây con đã được đảo.



