public class treeExample {

/*    
treeExample t = new treeExample();
t.preOrder();
t.postOrder();

*/

    public Node yearNode {get; set;}
    
    public List<String> output {get; set;}
    
    public treeExample() {
        
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
        
        system.debug(JSON.serialize(yr2016));
        
        yearNode = yr2016;
    }    

    
    public void preOrder() {
		output = new List<String>();
        preOrderRecurse(yearNode);
        system.debug('postOrder: ' + JSON.serialize(output));
    }    
    
    public void preOrderRecurse(Node n) {
		output.add(n.name);
        for (Node c: n.children) {
        	preOrderRecurse(c); 	
        }
    }        
    
    
    public void postOrder() {
		output = new List<String>();
        postOrderRecurse(yearNode);
        system.debug('postOrder: ' + JSON.serialize(output));
    }    
    
    public void postOrderRecurse(Node n) {
        for (Node c: n.children) {
        	postOrderRecurse(c); 	
        }
        output.add(n.name);
    }
    
    
    public class Node {
        String name {get; set;}
        List<Node> children {get; set;}
        public Node(String n) {
            name = n;
            children = new List<Node>();
        }        
        public Node(String n, List<Node> c) {
            name = n;
            children = c;
        }
    }
    
    
}
