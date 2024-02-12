class Node{
  int? data;
  Node? left;
  Node? right;
  Node(this.data);
}
Node? root;

insert(data){
  Node newnode=Node(data);
  Node? currentRoot=root;
  if(root==null){
    root=newnode;
    return;
  }
  while(true){
    if(data<currentRoot?.data){
      if(currentRoot?.left==null){
        currentRoot?.left=newnode;
        return;
      }
      else{
        currentRoot=currentRoot?.left;
      }
    }
    else{
      if(currentRoot?.right==null){
        currentRoot?.right=newnode;
        return;
      }
      else{
        currentRoot=currentRoot?.right;
      }
    }
  }
}

contains(data){
  Node? currentroot=root;
  while(currentroot!=null){
    if(data<currentroot.data){
      currentroot=currentroot.left;
    }
    else if(data>currentroot.data){
      currentroot=currentroot.right;
    }
    else{
      return true;
    }
  }
  return false;
}

inorder(Node? node){
  if(node!=null){
    inorder(node.left);
    print(node.data);
    inorder(node.right);
  }
}

preorder(Node? node){
  if(node!=null){
    print(node.data);
    preorder(node.left);
    preorder(node.right);
  }
}

postorder(Node? node){
  if(node!=null){
    postorder(node.left);
    postorder(node.right);
    print(node.data);
  }
}

delete(data,currentroot){
  while(currentroot != null){
    if(data < currentroot.data){
      currentroot=currentroot.left;
    }
    else if(data > currentroot.data){
      currentroot=currentroot.right;
    }
    else{
      if(currentroot.left!=null && currentroot.right!=null){
        currentroot.data=minvalue(currentroot.right);
        delete(currentroot.data,currentroot.right);
      }
    }
  }
}

minvalue(current){
  if(current==null){
    return current;
  }
  else{
    return minvalue(current.left);
  }
}


main(){
  insert(10);
  insert(5);
  insert(2);
  insert(15);
  insert(30);
}