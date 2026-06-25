using gen.xsuaa.m as pr from '../db/Product-model';


service ProductServide {
   
    @optimized: true // This annotation indicates that the entity is optimized for performance.
    @odata.draft.enabled
    entity ProductInfo as projection on  pr.Product ;
    entity ProductDesc as projection on pr.ProductDesc;

    action markUpdated(productName : String) 
        returns ProductInfo;

    function getProductTypeByName(productName : String)
        returns String;

 
}