Bài 1 — Generate Parentheses

class Solution:

&#x20;   def generateParenthesis(self, n):

&#x20;       result = \[]



&#x20;       def backtrack(current, open\_count, close\_count):

&#x20;           if len(current) == n \* 2:

&#x20;               result.append("".join(current))

&#x20;               return



&#x20;           # Chọn '('

&#x20;           if open\_count < n:

&#x20;               current.append("(")

&#x20;               backtrack(current, open\_count + 1, close\_count)

&#x20;               current.pop()



&#x20;           # Chọn ')'

&#x20;           if close\_count < open\_count:

&#x20;               current.append(")")

&#x20;               backtrack(current, open\_count, close\_count + 1)

&#x20;               current.pop()



&#x20;       backtrack(\[], 0, 0)



&#x20;       return result

\--------------------------------------------------------



* Thêm ( hoặc ) nhưng phải đảm bảo close\_count <= open\_count → đi tiếp → pop() → thử lựa chọn khác.



\--------------------------------------------------------



Bài 2 — Combination Sum III

class Solution:

&#x20;   def combinationSum3(self, k, n):

&#x20;       result = \[]



&#x20;       def backtrack(start, current, total):

&#x20;           if len(current) == k:

&#x20;               if total == n:

&#x20;                   result.append(current.copy())

&#x20;               return



&#x20;           if total > n:

&#x20;               return



&#x20;           for i in range(start, 10):

&#x20;               current.append(i)



&#x20;               backtrack(

&#x20;                   i + 1,

&#x20;                   current,

&#x20;                   total + i

&#x20;               )



&#x20;               current.pop()



&#x20;       backtrack(1, \[], 0)



&#x20;       return result

\--------------------------------------------------------



* Chọn số từ 1 → 9 → cộng vào tổng → đủ k số thì kiểm tra tổng → pop() → thử số khác



\--------------------------------------------------------

Bài 3 — Letter Combinations of a Phone Number

class Solution:

&#x20;   def letterCombinations(self, digits):

&#x20;       if not digits:

&#x20;           return \[]



&#x20;       phone = {

&#x20;           "2": "abc",

&#x20;           "3": "def",

&#x20;           "4": "ghi",

&#x20;           "5": "jkl",

&#x20;           "6": "mno",

&#x20;           "7": "pqrs",

&#x20;           "8": "tuv",

&#x20;           "9": "wxyz"

&#x20;       }



&#x20;       result = \[]



&#x20;       def backtrack(index, current):

&#x20;           if index == len(digits):

&#x20;               result.append("".join(current))

&#x20;               return



&#x20;           letters = phone\[digits\[index]]



&#x20;           for letter in letters:

&#x20;               current.append(letter)



&#x20;               backtrack(index + 1, current)



&#x20;               current.pop()



&#x20;       backtrack(0, \[])



&#x20;       return result

\--------------------------------------------------------



* Lấy từng chữ cái của chữ số hiện tại → thêm vào current → đi sang chữ số tiếp theo → pop() → thử chữ cái khác.



