const cds = require('@sap/cds')

module.exports = cds.service.impl(function () {

const { ProductInfo } = this.entities

this.on('markUpdated', async (req) => {   //unbound action

    const { productName } = req.data

    const product = await SELECT.one
        .from(ProductInfo)
        .where({ Productname: productName })

    if (!product) return req.error(404, 'Not found')

    await UPDATE(ProductInfo)
        .set({ ProductType: 'UPDATED' })
        .where({ Productname: productName })

    return SELECT.one.from(ProductInfo)
        .where({ Productname: productName })


})

 this.on('getProductTypeByName', async (req) => {  //unbound function

        const { productName } = req.data

        const product = await SELECT.one
            .from(ProductInfo)
            .where({ Productname: productName })

        if (!product) return req.error(404, 'Product not found')

        return product.ProductType   // return only string

        

    })

   
})