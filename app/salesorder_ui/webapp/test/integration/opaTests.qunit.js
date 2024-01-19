sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'com/acc/salesorderui/test/integration/FirstJourney',
		'com/acc/salesorderui/test/integration/pages/SalesOrdersList',
		'com/acc/salesorderui/test/integration/pages/SalesOrdersObjectPage',
		'com/acc/salesorderui/test/integration/pages/SalesOrderItemsObjectPage'
    ],
    function(JourneyRunner, opaJourney, SalesOrdersList, SalesOrdersObjectPage, SalesOrderItemsObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('com/acc/salesorderui') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheSalesOrdersList: SalesOrdersList,
					onTheSalesOrdersObjectPage: SalesOrdersObjectPage,
					onTheSalesOrderItemsObjectPage: SalesOrderItemsObjectPage
                }
            },
            opaJourney.run
        );
    }
);