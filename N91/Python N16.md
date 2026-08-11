Bài 4 — Delete Word



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



&#x20;   def delete(self, word):

&#x20;       current = self.root



&#x20;       for ch in word:

&#x20;           if ch not in current.children:

&#x20;               return False



&#x20;           current = current.children\[ch]



&#x20;       if not current.is\_end:

&#x20;           return False



&#x20;       current.is\_end = False

&#x20;       return True





trie = Trie()



trie.insert("cat")

trie.insert("car")



print(trie.search("cat"))



trie.delete("cat")



print(trie.search("cat"))

print(trie.search("car"))



\-------------------------------------------------------------------



* delete → đi từng ký tự của từ → nếu thiếu ký tự thì False → đến cuối kiểm tra is\_end → nếu là từ tồn tại thì đổi is\_end = False để xóa từ.



\-------------------------------------------------------------------

Bài 5 — Find Words With Prefix



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



&#x20;   def findWords(self, prefix):

&#x20;       current = self.root



&#x20;       # Đi đến node cuối của prefix

&#x20;       for ch in prefix:

&#x20;           if ch not in current.children:

&#x20;               return \[]



&#x20;           current = current.children\[ch]



&#x20;       result = \[]



&#x20;       def dfs(node, word):

&#x20;           if node.is\_end:

&#x20;               result.append(word)



&#x20;           for ch in node.children:

&#x20;               dfs(node.children\[ch], word + ch)



&#x20;       dfs(current, prefix)



&#x20;       return result





trie = Trie()



trie.insert("cat")

trie.insert("car")

trie.insert("can")

trie.insert("dog")

trie.insert("apple")



print(trie.findWords("ca"))

print(trie.findWords("do"))

print(trie.findWords("z"))



\------------------------------------------------------------

* findWords → đi từng ký tự của prefix → đến node cuối prefix → dùng DFS đi qua children → gặp is\_end = True thì thêm từ vào result.







