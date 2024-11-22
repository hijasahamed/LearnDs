class Node {
  int? data;
  Node? right;
  Node? left;
  Node(this.data);
}

Node? root;

insert( data) {
  Node newnode=Node(data);
  Node? currentnode=root;
  if(root==null){
    root= Node(data);
    return;
  }
  while(true){
    if(data < currentnode?.data){
      if(currentnode?.left == null){
        currentnode?.left=newnode;
        break;
      }
      else{
        currentnode=currentnode?.left;
      }
    }
    else{
      if(currentnode?.right == null){
        currentnode?.right=newnode;
        break;
      }
      else{
        currentnode=currentnode?.right;
      }
    }
  }
}

contains(data){
  Node? currentnode=root;
  while(currentnode !=null){
    if(data <currentnode.data){
      currentnode=currentnode.left;
    }
    else if(data > currentnode.data){
      currentnode=currentnode.right;
    }
    else{
      return true;
    }
  }
  return false;
}



inOrder(Node? node){
  if(node != null){
    inOrder(node.left);
    print(node.data);
    inOrder(node.right);
  }
}

preOrder(Node? node){
  if(node != null){
    print(node.data);
    preOrder(node.left);
    preOrder(node.right);
  }
}

postOrder(Node? node){
  if(node != null){
    postOrder(node.left);
    postOrder(node.right);
    print(node.data);
  }
}





main(){
  insert(10);
  insert(8);
  insert(11);
  insert(4);
  insert(9);
}
