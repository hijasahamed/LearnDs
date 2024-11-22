class TrieNode{
  Map<String,TrieNode> children = {};
  bool isEndOfWord = false; 
}

class Trie{
  TrieNode root = TrieNode();

  void insert(String word){
    TrieNode current = root;
    for(int i=0; i<word.length ; i++){
      String char = word[i];
      current.children.putIfAbsent(char, () => TrieNode(),);
      current = current.children[char]!;
    }
    current.isEndOfWord = true;
  }
}