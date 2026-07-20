**Bài 1. Binary Search**

**class Solution(object):**

&#x20;   **def search(self, nums, target):**

&#x20;       **left = 0**

&#x20;       **right = len(nums) - 1**



&#x20;       **while left <= right:**

&#x20;           **mid = (left + right) // 2**



&#x20;           **if nums\[mid] == target:**

&#x20;               **return mid**



&#x20;           **elif nums\[mid] < target:**

&#x20;               **left = mid + 1**



&#x20;           **else:**

&#x20;               **right = mid - 1**



&#x20;       **return -1**

**--------------------------------------------------------**

**Bài 2. Search Insert Position**



**class Solution(object):**



&#x20;   **def searchInsert(self, nums, target):**

&#x20;       **left = 0**

&#x20;       **right = len(nums) - 1**



&#x20;       **while left <= right:**

&#x20;           **mid = (left + right) // 2**



&#x20;           **if nums\[mid] == target:**

&#x20;               **return mid**



&#x20;           **elif nums\[mid] < target:**

&#x20;               **left = mid + 1**



&#x20;           **else:**

&#x20;               **right = mid - 1**



&#x20;       **return left**

**--------------------------------------------------------**

**Bài 3. Guess Number Higher or Lower**



**class Solution(object):**



&#x20;   **def guessNumber(self, n):**

&#x20;       **left = 1**

&#x20;       **right = n**



&#x20;       **while left <= right:**

&#x20;           **mid = (left + right) // 2**



&#x20;           **result = guess(mid)**



&#x20;           **if result == 0:**

&#x20;               **return mid**



&#x20;           **elif result == 1:**

&#x20;               **left = mid + 1**



&#x20;           **else:**

&#x20;               **right = mid - 1**

**--------------------------------------------------------**



**Bài 4. First Bad Version**



**class Solution(object):**



&#x20;   **def firstBadVersion(self, n):**

&#x20;       **left = 1**

&#x20;       **right = n**



&#x20;       **while left <= right:**

&#x20;           **mid = (left + right) // 2**



&#x20;           **if isBadVersion(mid):**

&#x20;               **right = mid - 1**



&#x20;           **else:**

&#x20;               **left = mid + 1**



&#x20;       **return left**

**--------------------------------------------------------**

**Bài 5. Find Smallest Letter Greater Than Target**



**class Solution(object):**



&#x20;   **def nextGreatestLetter(self, letters, target):**

&#x20;       **left = 0**

&#x20;       **right = len(letters) - 1**



&#x20;       **while left <= right:**

&#x20;           **mid = (left + right) // 2**



&#x20;           **if letters\[mid] <= target:**

&#x20;               **left = mid + 1**



&#x20;           **else:**

&#x20;               **right = mid - 1**



&#x20;       **if left == len(letters):**

&#x20;           **return letters\[0]**



&#x20;       **return letters\[left]**

