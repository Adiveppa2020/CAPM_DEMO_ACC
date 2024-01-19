using CatalogService as service from '../../srv/cat-service';

annotate service.SalesOrders with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Id}',
            Value : ID,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Description}',
            Value : description,
        },
        {
            $Type : 'UI.DataField',
            Label : '{i18n>Customerno}',
            Value : customerNo,
        },
    ]
);
annotate service.SalesOrders with @(
    UI.FieldGroup #GeneratedGroup1 : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Id}',
                Value : ID,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Description}',
                Value : description,
            },
            {
                $Type : 'UI.DataField',
                Label : '{i18n>Customerno}',
                Value : customerNo,
            },
            {
                $Type : 'UI.DataFieldForAnnotation',
                Target : '@Communication.Contact#contact',
                Label : '{i18n>ContactName}',
            },
        ],
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            ID : 'GeneratedFacet1',
            Label : '{i18n>GeneralInformation}',
            Target : '@UI.FieldGroup#GeneratedGroup1',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : '{i18n>SalesItem}',
            ID : 'SalesItem',
            Target : 'items/@UI.LineItem#SalesItem',
        },
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'ID_LABLE',
            ID : 'ID_LABLE',
            Target : '@UI.Identification',
        },
    ]
);
annotate service.SalesOrders with @(
    UI.SelectionFields : [
        customerNo,
        ID,
        items.itemNo,
        items.salesorder_ID,
    ]
);
annotate service.SalesOrders with {
    customerNo @Common.Label : '{i18n>Customerno}'
};
annotate service.SalesOrders with {
    ID @Common.Label : '{i18n>Id}'
};
annotate service.SalesOrderItems with {
    itemNo @Common.Label : '{i18n>Itemsitemno}'
};
annotate service.SalesOrderItems with {
    salesorder @Common.Label : '{i18n>Itemssalesorderid}'
};
annotate service.SalesOrderItems with @(
    UI.LineItem #SalesItem : [
        {
            $Type : 'UI.DataField',
            Value : itemNo,
            Label : '{i18n>Itemsitemno}',
        },{
            $Type : 'UI.DataField',
            Value : material,
            Label : '{i18n>Material}',
        },{
            $Type : 'UI.DataField',
            Value : quantity,
            Label : '{i18n>Quantity}',
        },]
);
annotate service.SalesOrders with @(
    Communication.Contact #contact : {
        $Type : 'Communication.ContactType',
        fn : customerNo,
        title : description,
        photo : customerNo,
        tel : [
            {
                $Type : 'Communication.PhoneNumberType',
                type : #work,
                uri : customerNo,
            },
        ],
        email : [
            {
                $Type : 'Communication.EmailAddressType',
                type : #work,
                address : description,
            },
        ],
        adr : [
            {
                $Type : 'Communication.AddressType',
                type : #work,
                street : customerNo,
                locality : description,
            },
        ],
    }
);
annotate service.SalesOrders with @(
    Communication.Contact #contact1 : {
        $Type : 'Communication.ContactType',
        fn : description,
    }
);
annotate service.SalesOrderItems with @(
    UI.DataPoint #itemNo : {
        Value : itemNo,
    },
    UI.Chart #itemNo : {
        ChartType : #Line,
        Title : '{i18n>Itemsitemno}',
        Measures : [
            itemNo,
        ],
        MeasureAttributes : [
            {
                DataPoint : '@UI.DataPoint#itemNo',
                Role : #Axis1,
                Measure : itemNo,
            },
        ],
        Dimensions : [
            itemNo,
        ],
    }
);
annotate service.SalesOrders with @(
    UI.HeaderFacets : []
);
annotate service.SalesOrders with @(
    UI.Identification : [
        {
            $Type : 'UI.DataField',
            Value : customerNo,
        },{
            $Type : 'UI.DataField',
            Value : description,
            Label : 'description',
        },{
            $Type : 'UI.DataField',
            Value : items.itemNo,
        },{
            $Type : 'UI.DataField',
            Value : items.material,
            Label : 'material',
        },]
);
