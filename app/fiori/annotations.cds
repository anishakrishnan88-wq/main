using ProductServide as service from '../../srv/Product-service';
annotate service.ProductInfo with @(
    UI.FieldGroup #GeneratedGroup : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Label : 'ProductID',
                Value : ProductID,
            },
            {
                $Type : 'UI.DataField',
                Label : 'Productname',
                Value : Productname,
            },
            {
                $Type : 'UI.DataField',
                Label : 'ProductType',
                Value : ProductType,
            }]
    },
    UI.Facets : [
        {
            $Type : 'UI.ReferenceFacet',
            Label : 'Details',
            ID : 'Details',
            Target : '@UI.FieldGroup#Details',
        },
    ],
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Label : 'ProductID',
            Value : ProductID,
        },
        {
            $Type : 'UI.DataField',
            Label : 'Productname',
            Value : Productname,
        },
        {
            $Type : 'UI.DataField',
            Label : 'ProductType',
            Value : ProductType,
        },
        {
            $Type : 'UI.DataField',
            Value : ID,
            Label : 'ID',
        },
        {
            $Type : 'UI.DataField',
            Value : desc.Description,
            Label : 'Description',
            @UI.Importance : #High,
        },
    ],
    UI.SelectionFields : [
        Productname,
    ],
    UI.HeaderInfo : {
        TypeName : 'Object pages',
        TypeNamePlural : '',
    },
    UI.FieldGroup #Form : {
        $Type : 'UI.FieldGroupType',
        Data : [
        ],
    },
    UI.FieldGroup #Details : {
        $Type : 'UI.FieldGroupType',
        Data : [
            {
                $Type : 'UI.DataField',
                Value : ProductID,
                Label : 'ProductID',
            },
            {
                $Type : 'UI.DataField',
                Value : Productname,
            },
            {
                $Type : 'UI.DataField',
                Value : ProductType,
                Label : 'ProductType',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'ProductServide.EntityContainer/markUpdated',
                Label : 'markUpdated',
            },
            {
                $Type : 'UI.DataFieldForAction',
                Action : 'ProductServide.EntityContainer/getProductTypeByName',
                Label : 'getProductTypeByName',
            },
        ],
    },
);

annotate service.ProductDesc with @(
    UI.LineItem : [
        {
            $Type : 'UI.DataField',
            Value : Description,
        },
    ]
);

annotate service.ProductInfo with {
    Productname @(
        Common.Label : 'Productname',
        Common.ValueList : {
            $Type : 'Common.ValueListType',
            CollectionPath : 'ProductInfo',
            Parameters : [
                {
                    $Type : 'Common.ValueListParameterInOut',
                    LocalDataProperty : Productname,
                    ValueListProperty : 'Productname',
                },
            ],
        },
        Common.ValueListWithFixedValues : true,
    )
};

annotate service.ProductDesc with {
    Description @(
        Common.ExternalID : product.ProductDesc ,
        )
};

