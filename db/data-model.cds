namespace com.acc;

entity SalesOrders {
  key ID          : Integer;
      description : String;
      customerNo  : String;
      items       : Association to many SalesOrderItems
                      on items.salesorder = $self;
}

entity SalesOrderItems {
  salesorder : Association to one SalesOrders;
  itemNo     : Integer;
  material   : String(10);
  quantity   : Decimal(10, 2);
}
