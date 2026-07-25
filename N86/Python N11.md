Bài 1. Merge Two Sorted Lists

class ListNode(object):

&#x20;   def \_\_init\_\_(self, val=0, next=None):

&#x20;       self.val = val

&#x20;       self.next = next





class Solution(object):

&#x20;   def mergeTwoLists(self, list1, list2):

&#x20;       dummy = ListNode()

&#x20;       current = dummy



&#x20;       while list1 and list2:



&#x20;           if list1.val < list2.val:

&#x20;               current.next = list1

&#x20;               list1 = list1.next

&#x20;           else:

&#x20;               current.next = list2

&#x20;               list2 = list2.next



&#x20;           current = current.next



&#x20;       if list1:

&#x20;           current.next = list1

&#x20;       else:

&#x20;           current.next = list2



&#x20;       return dummy.next

\--------------------------------------------------------



Dùng 1 node giả (dummy) và 1 con trỏ current để xây danh sách mới.



Mỗi vòng lặp:

* So sánh list1.val và list2.val.
* Node nào nhỏ hơn thì nối vào current.next.
* Di chuyển danh sách vừa lấy (list1 hoặc list2).
* Di chuyển current.
* Cuối cùng nối phần còn lại của danh sách chưa hết.
* Trả về dummy.next.

\---------------------------------------------------------

Bài 2. Remove Duplicates from Sorted List

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

\-----------------------------------------------



Dùng 1 con trỏ current duyệt danh sách.



Mỗi vòng lặp:



So sánh current.val với current.next.val.

Nếu giống nhau thì bỏ node trùng bằng

current.next = current.next.next.

Nếu khác nhau thì di chuyển current.



Cuối cùng trả về head.

\-----------------------------------------------

Bài 3. Middle of the Linked List

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

\--------------------------------------------



Dùng 2 con trỏ:



slow: đi 1 bước.

fast: đi 2 bước.



Mỗi vòng lặp:



slow = slow.next

fast = fast.next.next



Khi fast đi đến cuối danh sách thì slow đang đứng ở node giữa.



Trả về slow.

