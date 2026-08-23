Bài 1 — Kth Largest Element in a Stream

import heapq



class KthLargest:



&#x20;   def \_\_init\_\_(self, k, nums):

&#x20;       self.k = k

&#x20;       self.heap = \[]



&#x20;       for num in nums:

&#x20;           heapq.heappush(self.heap, num)



&#x20;           if len(self.heap) > k:

&#x20;               heapq.heappop(self.heap)



&#x20;   def add(self, val):

&#x20;       heapq.heappush(self.heap, val)



&#x20;       if len(self.heap) > self.k:

&#x20;           heapq.heappop(self.heap)



&#x20;       return self.heap\[0]

\--------------------------------------------------------------------------



* dùng Min Heap, luôn giữ đúng k phần tử lớn nhất → phần tử nhỏ nhất trong heap chính là k-th largest.



\--------------------------------------------------------------------------

Bài 2 — Last Stone Weight

import heapq



class Solution:

&#x20;   def lastStoneWeight(self, stones):

&#x20;       # Python chỉ có Min Heap

&#x20;       # Đổi dấu để tạo Max Heap

&#x20;       stones = \[-x for x in stones]



&#x20;       heapq.heapify(stones)



&#x20;       while len(stones) > 1:

&#x20;           a = -heapq.heappop(stones)

&#x20;           b = -heapq.heappop(stones)



&#x20;           if a != b:

&#x20;               heapq.heappush(stones, -(a - b))



&#x20;       if stones:

&#x20;           return -stones\[0]



&#x20;       return 0

\--------------------------------------------------------------------------

* dùng Max Heap để luôn lấy ra 2 viên đá lớn nhất → xử lý → đưa viên còn lại vào heap







































































