Bài 1 — Insert + Search



class TrieNode:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.children = {}

&#x20;       self.is\_end = False





class Trie:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = TrieNode()



&#x20;   def insert(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               current.children\[ch] = TrieNode()



&#x20;           current = current.children\[ch]



&#x20;       current.is\_end = True



&#x20;   def search(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               return False



&#x20;           current = current.children\[ch]



&#x20;       return current.is\_end





trie = Trie()



trie.insert("cat")

trie.insert("car")



print(trie.search("cat"))  

print(trie.search("car"))  

print(trie.search("can")) 



\--------------------------------------------------------

* insert → đi từng ký tự → tạo node nếu chưa có → cuối từ is\_end = True.



* search → đi từng ký tự → nếu thiếu ký tự thì False → cuối cùng kiểm tra is\_end.

\--------------------------------------------------------

Bai 2: startsWith(prefix)



class TrieNode:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.children = {}

&#x20;       self.is\_end = False





class Trie:

&#x20;   def \_\_init\_\_(self):

&#x20;       self.root = TrieNode()



&#x20;   def insert(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               current.children\[ch] = TrieNode()



&#x20;           current = current.children\[ch]



&#x20;       current.is\_end = True



&#x20;   def startsWith(self, prefix):

&#x20;       current = self.root



&#x20;       for ch in prefix:

&#x20;           if ch not in current.children:

&#x20;               return False



&#x20;           current = current.children\[ch]



&#x20;       return True

\--------------------------------------------------------



* startsWith → đi từng ký tự của prefix bằng current.children → thiếu ký tự thì False → đi hết prefix thì True.













































