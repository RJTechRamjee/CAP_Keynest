sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'uiusermanagement/test/integration/FirstJourney',
		'uiusermanagement/test/integration/pages/UsersList',
		'uiusermanagement/test/integration/pages/UsersObjectPage'
    ],
    function(JourneyRunner, opaJourney, UsersList, UsersObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('uiusermanagement') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheUsersList: UsersList,
					onTheUsersObjectPage: UsersObjectPage
                }
            },
            opaJourney.run
        );
    }
);