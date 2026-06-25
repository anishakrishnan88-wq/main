namespace gen.xsuaa.m;
using { Attachments } from '@cap-js/attachments';

using
{
    cuid,
    managed
}
from '@sap/cds/common';

entity Product :  managed

{
    key ID : Integer;
    ProductID : String(40);
    Productname : String(40);
    ProductType : String(10);
    ProductDate : String(20);
    attachments : Composition of many Attachments;
   
    desc : Composition of one ProductDesc on desc.product = $self;
}

entity ProductDesc : cuid
{
    Description : String(100);
    product : Association to one Product;
}

