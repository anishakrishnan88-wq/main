sap.ui.define([
    "sap/fe/test/JourneyRunner",
	"fiori/test/integration/pages/ProductInfoList",
	"fiori/test/integration/pages/ProductInfoObjectPage"
], function (JourneyRunner, ProductInfoList, ProductInfoObjectPage) {
    'use strict';

    var runner = new JourneyRunner({
        launchUrl: sap.ui.require.toUrl('fiori') + '/test/flp.html#app-preview',
        pages: {
			onTheProductInfoList: ProductInfoList,
			onTheProductInfoObjectPage: ProductInfoObjectPage
        },
        async: true
    });

    return runner;
});

