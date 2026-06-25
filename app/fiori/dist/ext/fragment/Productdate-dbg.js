sap.ui.define([
    "sap/m/MessageToast"
], function (MessageToast) {
    "use strict";

    return {

        onPress: function (oEvent) {

            // Get the view
            var oView = oEvent.getSource().getParent().getParent();

            // Get binding context from view
            var oContext = oView.getBindingContext();

            if (!oContext) {
                MessageToast.show("No context available");
                return;
            }

            var oData = oContext.getObject();

            var sProductDate = oData.ProductDate;

            if (sProductDate) {
                MessageToast.show("Product Date: " + sProductDate);
            } else {
                MessageToast.show("Product Date not available");
            }

        }

    };
});