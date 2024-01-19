using com.acc as model from '../db/data-model';

service CatalogService {
    entity SalesOrders as projection on model.SalesOrders;
    entity SalesOrderItems as projection on model.SalesOrderItems;
}
