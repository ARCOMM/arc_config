class CfgMainMenuSpotlight {
	/* Delete the other spotlights. */
	delete AoW_Showcase_AoW;
	delete AoW_Showcase_Future;
	delete ApexProtocol;
	delete Bootcamp;
	delete Contact_Campaign;
	delete EastWind;
	delete OldMan;
	delete Orange_CampaignGerman;
	delete Orange_Campaign;
	delete Orange_Showcase_IDAP;
	delete Orange_Showcase_LoW;
	delete SP_FD14;
	delete Tacops_Campaign_02;
	delete Tacops_Campaign_03;
	delete Tacops_Campaign_01;
	delete Tanks_Campaign_01;

	#define COND(x) QUOTE('x' == profileNamespace getVariable [ARR_2(QQGVAR(spotlight),'Clips')])
	class GVARMAIN(joinMainServerLogo) {
		text = "ARCOMM Main Server";
		textIsQuote = 0;
		picture = QPATHTOF(data\logo_ca.paa);
		video = QPATHTOF(data\logo.ogv);
		action = QUOTE(connectToServer [ARR_3('arma.arcomm.co.uk',parseNumber (profileNamespace getVariable QQGVAR(port)),'arcomm')]);
		actionText = "Connect to Main Server";
		condition = COND(Logo);
	};
	class GVARMAIN(joinMainServerClips) : GVARMAIN(joinMainServerLogo) {
		picture = QPATHTOF(data\clips_ca.paa);
		video = QPATHTOF(data\clips.ogv);
		condition = COND(Clips);
	};
};
