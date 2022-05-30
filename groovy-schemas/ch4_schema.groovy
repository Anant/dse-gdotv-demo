// based on: https://github.com/datastax/graph-book/blob/master/notebooks/Ch4_Neighborhoods_Development_Gosnell.studio-nb.tar
system.graph('neighborhoods_dev').
  ifNotExists().
  create()

:remote config alias g neighborhoods_dev.g

schema.vertexLabel('Transaction').
       ifNotExists().
       partitionBy('transaction_id', Int).
       property('transaction_type', Text).
       property('timestamp', Text).
       create();

schema.vertexLabel('Vendor').
       ifNotExists().
       partitionBy('vendor_id', Int).
       property("vendor_name", Text).
       create();
       
// vertex labels from chapter 3
schema.vertexLabel('Customer').
       ifNotExists().
       partitionBy('customer_id', Text).
       property('name', Text).
       create();

schema.vertexLabel('Account').
       ifNotExists().
       partitionBy('acct_id', Text).
       create();

schema.vertexLabel('Loan').
       ifNotExists().
       partitionBy('loan_id', Text).
       create();

schema.vertexLabel('CreditCard').
       ifNotExists().
       partitionBy('cc_num', Text).
       create();

schema.edgeLabel('withdraw_from').
       ifNotExists().
       from('Transaction').
       to('Account').
       create();

schema.edgeLabel('deposit_to').
       ifNotExists().
       from('Transaction').
       to('Account').
       create();

schema.edgeLabel('pay').
       ifNotExists().
       from('Transaction').
       to('Loan').
       create();

schema.edgeLabel('charge').
       ifNotExists().
       from('Transaction').
       to('CreditCard').
       create();

schema.edgeLabel('pay').
       ifNotExists().
       from('Transaction').
       to('Vendor').
       create();
       
// edge labels from chapter 3
schema.edgeLabel('owes').
       ifNotExists().
       from('Customer').
       to('Loan').
       create();
       
schema.edgeLabel('uses').
       ifNotExists().
       from('Customer').
       to('CreditCard').
       create();

schema.edgeLabel('owns').
       ifNotExists().
       from('Customer').
       to('Account').
       property('role', Text).
       create();
