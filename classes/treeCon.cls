public class treeCon {

    public Node tree {get; set;}
    public String treeJSON {get; set;}
    public List<String> preOrderOutput {get; set;}
    public List<String> postOrderOutput {get; set;}
    public String sPreOrderOutput {get; set;}
    public String sPostOrderOutput {get; set;}    
    
    public treeCon() {
        
        Node jan = new Node('Jan');
		Node feb = new Node('Feb');        
        Node mar = new Node('Mar');
		Node apr = new Node('Apr');
        Node may = new Node('May');
		Node jun = new Node('Jun');        
        Node jul = new Node('Jul');
		Node aug = new Node('Aug');   
        Node sep = new Node('Sep');
		Node oct = new Node('Oct');  
        Node nov = new Node('Nov');        
        Node dec = new Node('Dec');
        
        Node q1 = new Node('Q1', new List<Node>{jan, feb, mar});
        Node q2 = new Node('Q2', new List<Node>{apr, may, jun});
        Node q3 = new Node('Q3', new List<Node>{jul, aug, sep});
        Node q4 = new Node('Q4', new List<Node>{oct, nov, dec});        
        
        Node yr2016 = new Node('2016', new List<Node>{q1, q2, q3, q4});
        tree = new Node(null, new List<Node>{yr2016});

        preOrder();
        postOrder();
        
        treeJSON = JSON.serialize(tree);
        sPreOrderOutput = String.join(preOrderOutput,',');
        sPostOrderOutput = String.join(postOrderOutput,',');
    }    

    
    public void preOrder() {
        preOrderOutput = new List<String>();
        preOrderRecurse(tree);
    }    
    public void preOrderRecurse(Node n) {
        preOrderOutput.add(n.name);
        if (n.children != null) {
            for (Node c: n.children) {
                preOrderRecurse(c); 	
            }
        }
    }        
    
    
    public void postOrder() {
		postOrderOutput = new List<String>();
        postOrderRecurse(tree);
    }    
    public void postOrderRecurse(Node n) {
        if (n.children != null) {
            for (Node c: n.children) {
                postOrderRecurse(c); 	
            }            
        }
        postOrderOutput.add(n.name);
    }
    
    
    
    
    
    public class Node {
        String name {get; set;}
        List<Node> children {get; set;}
        public Node(String n) {
            name = n;
        }        
        public Node(String n, List<Node> c) {
            name = n;
            children = c;
        }
    }
    
    
}