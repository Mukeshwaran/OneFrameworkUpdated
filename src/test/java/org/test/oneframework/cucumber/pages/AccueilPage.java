package org.cts.oneframework.cucumber.pages;

import org.cts.oneframework.utilities.AssertionLibrary;
import org.cts.oneframework.utilities.BasePageObject;
import org.cts.oneframework.utilities.WaitUtils;
import org.openqa.selenium.WebDriver;

public class AccueilPage extends BasePageObject {

	public AccueilPage(WebDriver driver) {
		super(driver);
	}

	/*---------------------------------- WebElements of LoginLogout Methods ----------------------------------*/
	// Text Webelements
	private String txt_Votre_Parc_In_Accueil = "//*[@id='bloc_parc']/h1[1][contains(text(),'Votre parc')]";
	private String txt_Votre_Station_Total_In_Accueil = "//*[@id='bloc_station_total']/h1[1][contains(text(),'Votre station Total')]";
	private String txt_Prix_Bareme_Total_In_Accueil = "//*[@id='bloc_bareme']/h1[1][contains(text(),'Prix barème Total')]";
	private String txt_Rechercher_Des_Tarifs ="//*[contains(text(),'Rechercher des tarifs')]";
	private String txt_Integration_de_vehicules_In_Votre_Parc= "//*[contains(text(),'Intégration de véhicules et de collaborateurs en masse')]";
	private String txt_Etape1 = "//*[contains(text(),'ÉTAPE 1')]";
	private String txt_Cout_De_Votre_Parc_Automobile_In_Accueil = "//*[@id='bloc_cout_parc']/h1[1][contains(text(),'COÛT DE VOTRE PARC AUTOMOBILE')]";
	
	// Image Webelements
	private String img_Total_Fleet_Logo_Top_Left = "//*[@class='header_logo logo custom-logo']/img[contains(@src,'set_logo')]";
	private String img_Vehicules_In_Votre_Parc = "//*[contains(@src,'picto-search-vehicule')]";
	private String img_Collaborateurs_In_Votre_Parc = "//*[contains(@src,'picto-search-collaborateur')]";
	private String img_Cartes_In_Votre_Parc = "//*[contains(@src,'picto-carte')]";
	private String img_Badge_In_Votre_Parc = "//*[contains(@src,'picto-search-carte')]";

	// Link Webelements
	private String lnk_AccueilText_LeftPane = "//*[contains(@class,'mCSB_container')]//li[1]/a[1]//*[contains(text(),'Accueil')]";
	private String lnk_SuiviDesCouts_LeftPane = "//*[contains(@class,'mCSB_container')]//li[2]/a[1]//*[contains(text(),'Suivi des coûts')]";
	private String lnk_AlertesEtAmendes_LeftPane = "//*[contains(@class,'mCSB_container')]//li[3]/a[1]//*[contains(text(),'Alertes et amendes')]";
	private String lnk_TousVosVehicules_LeftPane = "//*[contains(@class,'mCSB_container')]//li[4]/a[1]//*[contains(text(),'Tous vos Véhicules')]";
	private String lnk_VosVehiculesConnectes_LeftPane = "//*[contains(@class,'mCSB_container')]//li[5]/a[1]//*[contains(text(),'Vos véhicules connectés')]";
	private String lnk_Collaborateurs_LeftPane = "//*[contains(@class,'mCSB_container')]//li[6]/a[1]//*[contains(text(),'Collaborateurs')]";
	private String lnk_CartesEtBadges_LeftPane = "//*[contains(@class,'mCSB_container')]//li[7]/a[1]//*[contains(text(),'Cartes et badges')]";
	private String lnk_ContratsFournisseursEtFactures_LeftPane = "//*[contains(@class,'mCSB_container')]//li[8]/a[1]//*[contains(text(),'Contrats Fournisseurs et Factures')]";
	private String lnk_Campagnes_LeftPane = "//*[contains(@class,'mCSB_container')]//li[9]/a[1]//*[contains(text(),'Campagnes')]";
	private String lnk_Fiscalite_LeftPane = "//*[contains(@class,'mCSB_container')]//li[10]/a[1]//*[contains(text(),'Fiscalité')]";
	private String lnk_Rapports_LeftPane = "//*[contains(@class,'mCSB_container')]//li[11]/a[1]//*[contains(text(),'Rapports')]";
	private String lnk_Decouvrir_Les_Tarifs = "//*[contains(text(),'Découvrir les tarifs')]";
	private String lnk_VehiculesCount_In_Votre_Parc = "//div[2][contains(@class,'texte vehicle-count')][contains(@class,'Vehicle')]";
	private String lnk_CollaborateursCount_In_Votre_Parc = "//div[1][contains(@class,'texte contributor-count')][contains(@class,'Contributor')]";
	private String lnk_CartesCount_In_Votre_Parc = "//div[1][contains(@class,'texte card-count')][contains(@class,'Card')]";
	private String lnk_BadgeCount_In_Votre_Parc = "//div[1][contains(@class,'texte cardbadge-count multipleBadge')][contains(@class,'Badge')]";
	private String lnk_NouveauVehicule_In_Votre_Parc = "//*[contains(@href,'createNewVehicle')]";
	private String lnk_NouveauCollaborateur_In_Votre_Parc = "//*[contains(@href,'newCollaborator')]";
	private String lnk_NouveauCarte_In_Votre_Parc = "//*[contains(@href,'createcard')]";
	private String lnk_NouveauBadge_In_Votre_Parc = "//*[contains(@href,'createbadge')]";
	private String lnk_Integration_de_vehicules_In_Votre_Parc= "//*[contains(text(),'Intégration de véhicules et de collaborateurs en masse')]";
	
	/*---------------------------------- Reusable LoginLogout Methods ----------------------------------*/
/*	// ===================================================================================================================================================
	*//**
	 * @MethodName - setEmail(String email)
	 * @MethodDescription - This method is used to input Email in Login Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 23,2019
	 * @param email
	 * @return void
	 *//*
	public void setEmail(String email) {
		//if (txtbx_Email != null && isElementOnPage(txtbx_Email)) {
			setInputValue(txtbx_Email, email);
		//}
	}

	// ===================================================================================================================================================
	*//**
	 * @MethodName - setmotdepasse(String mot_de_passe)
	 * @MethodDescription - This method is used to input mot_de_passe in Login
	 *                    Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 23,2019
	 * @param mot_de_passe
	 * @return void
	 *//*
	public void setmotdepasse(String mot_de_passe) {
		//if (txtbx_Mot_de_passe != null && isElementOnPage(txtbx_Mot_de_passe)) {
			setInputValue(txtbx_Mot_de_passe, mot_de_passe);
		//}
	}

	// ===================================================================================================================================================
	*//**
	 * @MethodName - clickSeConnecter()
	 * @MethodDescription - This method is used to click Se_connecter in Login
	 *                    Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 23,2019
	 * @param null
	 * @return void
	 *//*
	public void clickSeConnecter() {
		if (btn_Se_connecter != null && isElementOnPage(btn_Se_connecter)) {
			clickElement(btn_Se_connecter);
		}
	}*/
	
	// ===================================================================================================================================================
	/**
	 * @MethodName - clickDecouvrirLesTarifs()
	 * @MethodDescription - This method is used to click Decouvrir Les Tarifs link under Prix Bareme Total section in Acceuil page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019
	 * @param null
	 * @return void
	 */
	public void clickDecouvrirLesTarifs() {
		if (lnk_Decouvrir_Les_Tarifs != null && isElementOnPage(lnk_Decouvrir_Les_Tarifs)) {
			clickElement(lnk_Decouvrir_Les_Tarifs);
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - scrollDownThePage()
	 * @MethodDescription - This method is used to scroll down in Nouveau_Vehicule Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019  
	 * @param null
	 * @return void
	 */
	public void scrollDownInNouveauVehiculePage() {
			scrollDown(lnk_Decouvrir_Les_Tarifs);
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - scrollDownThePage()
	 * @MethodDescription - This method is used to scroll down in Nouveau_Vehicle Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019  
	 * @param null
	 * @return void
	 */
	public void clickIntegrationdeVehiculesInVotreParc() {
			clickElement(lnk_Integration_de_vehicules_In_Votre_Parc);
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - scrollDownThePage()
	 * @MethodDescription - This method is used to scroll down in Nouveau_Vehicle Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019  
	 * @param null
	 * @return void
	 *//*
	public void clickAccueilLinkInLeftPane() {
			clickElement(lnk_Accueil_Left_Pane);
	}
	// ===================================================================================================================================================
*/
	/*
	 * ---------------------------------- Assertions of LoginLogout page ----------------------------------*/
	/**
	 * @MethodName - assertErrorMessageOnInvalidLogin()
	 * @MethodDescription - This method is used to verify if error message is
	 *                    displayed with invalid login
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 25,2019
	 * @param null
	 * @return void
	 *//*
	public void assertErrorMessageOnInvalidLogin() {
		waitForElementToLoad(txt_Passe_Incorrect);
		AssertionLibrary.assertEquals(getText(txt_Passe_Incorrect), "Nom d'utilisateur ou mot de passe incorrect",
				"Verify system throws error message with invalid user credentials");
	}
// ===================================================================================================================================================
*/	/**
	 * @MethodName - assertTotalFleetHomePageIsDisplayed()
	 * @MethodDescription - This method is used to verify if Home Page is
	 *                    successfully displayed or not
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 23,2019
	 * @param null
	 * @return void
	 *//*
	public void assertTotalFleetHomePageIsDisplayed() {
		waitForElementToLoad(txt_Votre_Parc_In_Accueil);
		AssertionLibrary.assertEquals(getText(txt_Votre_Parc_In_Accueil), "VOTRE PARC",
				"Verify user is on Total Fleet home page.");
	}

	// ===================================================================================================================================================
*/	/**
	 * @MethodName - assertAccueilDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Accueil portlet is
	 *                    displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAccueilDisplayInLeftPane() {
		WaitUtils.sleep(4000);
		waitForElementToLoad(lnk_AccueilText_LeftPane);
		if(isDisplayed(lnk_AccueilText_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_AccueilText_LeftPane), "Accueil",
				"Verify Accueil is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Accueil is not displayed in Left Pane");
		}
		
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertSuiviDesCoutsDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Suivi des couts
	 *                    portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertSuiviDesCoutsDisplayInLeftPane() {
		waitForElementToLoad(lnk_SuiviDesCouts_LeftPane);
		if(isDisplayed(lnk_SuiviDesCouts_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_SuiviDesCouts_LeftPane), "Suivi des coûts",
				"Verify Suivi des coûts is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Suivi des coûts is not displayed in Left Pane");
		}
		
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertAlertesEtAmendesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Alertes et amendes
	 *                    portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAlertesEtAmendesDisplayInLeftPane() {
		waitForElementToLoad(lnk_AlertesEtAmendes_LeftPane);
		if(isDisplayed(lnk_AlertesEtAmendes_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_AlertesEtAmendes_LeftPane), "Alertes et amendes",
				"Verify Alertes et amendes is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Alertes et amendes is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertTousVosVehiculesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Tous vos Vehicules
	 *                    portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertTousVosVehiculesDisplayInLeftPane() {
		waitForElementToLoad(lnk_TousVosVehicules_LeftPane);
		if(isDisplayed(lnk_TousVosVehicules_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_TousVosVehicules_LeftPane), "Tous vos Véhicules",
				"Verify Tous vos Véhicules is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Tous vos Véhicules is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertVosVehiculesConnectesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Vos vehicules
	 *                    connectes portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertVosVehiculesConnectesDisplayInLeftPane() {
		waitForElementToLoad(lnk_VosVehiculesConnectes_LeftPane);
		if(isDisplayed(lnk_VosVehiculesConnectes_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_VosVehiculesConnectes_LeftPane), "Vos véhicules connectés",
				"Verify Vos vehicules connectes is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Vos vehicules connectes is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCollaborateursDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Collaborateurs
	 *                    portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertCollaborateursDisplayInLeftPane() {
		waitForElementToLoad(lnk_Collaborateurs_LeftPane);
		if(isDisplayed(lnk_Collaborateurs_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_Collaborateurs_LeftPane), "Collaborateurs",
				"Verify Collaborateurs portlet is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Collaborateurs portlet is not displayed in Left Pane");
		}
		
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCartesEtBadgesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Cartes et badges
	 *                    portlet is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertCartesEtBadgesDisplayInLeftPane() {
		waitForElementToLoad(lnk_CartesEtBadges_LeftPane);
		if(isDisplayed(lnk_CartesEtBadges_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_CartesEtBadges_LeftPane), "Cartes et badges",
				"Verify Cartes et badges portlet is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Cartes et badges portlet is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertContratsFournisseursEtFacturesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Contrats
	 *                    Fournisseurs et Factures portlet is displayed in left
	 *                    pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertContratsFournisseursEtFacturesDisplayInLeftPane() {
		waitForElementToLoad(lnk_ContratsFournisseursEtFactures_LeftPane);
		if(isDisplayed(lnk_ContratsFournisseursEtFactures_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_ContratsFournisseursEtFactures_LeftPane),
				"Contrats Fournisseurs et Factures",
				"Verify Contrats Fournisseurs et Factures portlet is displayed in Left Pane");

}else{
			AssertionLibrary.fail("Contrats Fournisseurs et Factures portlet is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCampagnesDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Campagnes portlet
	 *                    is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertCampagnesDisplayInLeftPane() {
		waitForElementToLoad(lnk_Campagnes_LeftPane);
		if(isDisplayed(lnk_Campagnes_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_Campagnes_LeftPane), "Campagnes",
				"Verify Campagnes portlet is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Campagnes portlet is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertFiscaliteDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Fiscalité portlet
	 *                    is displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertFiscaliteDisplayInLeftPane() {
		waitForElementToLoad(lnk_Fiscalite_LeftPane);
		if(isDisplayed(lnk_Fiscalite_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_Fiscalite_LeftPane), "Fiscalité",
				"Verify Fiscalité portlet is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Fiscalité portlet is not displayed in Left Pane");
		}
		
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertRapportsDisplayInLeftPane()
	 * @MethodDescription - This method is used to verify if Rapports portlet is
	 *                    displayed in left pane
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertRapportsDisplayInLeftPane() {
		waitForElementToLoad(lnk_Rapports_LeftPane);
		if(isDisplayed(lnk_Rapports_LeftPane)){
		AssertionLibrary.assertEquals(getText(lnk_Rapports_LeftPane), "Rapports",
				"Verify Rapports portlet is displayed in Left Pane");
		}else{
			AssertionLibrary.fail("Rapports portlet is not displayed in Left Pane");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertAccueilVotreParcSectionIsDisplayed()
	 * @MethodDescription - This method is used to verify if Votre Parc Section
	 *                    is loaded in Home Page successfully
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAccueilVotreParcSectionIsDisplayed() {
		waitForElementToLoad(txt_Votre_Parc_In_Accueil);
		if(isDisplayed(txt_Votre_Parc_In_Accueil)){
		AssertionLibrary.assertEquals(getText(txt_Votre_Parc_In_Accueil), "VOTRE PARC",
				"Verify VOTRE PARC section is displayed");
		}else{
			AssertionLibrary.fail("VOTRE PARC section is not displayed");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertAccueilCoutSectionIsDisplayed()
	 * @MethodDescription - This method is used to verify if
	 *                    Cout_De_Votre_Parc_Automobile is loaded in Home Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAccueilCoutSectionIsDisplayed() {
		waitForElementToLoad(txt_Cout_De_Votre_Parc_Automobile_In_Accueil);
		if(isDisplayed(txt_Cout_De_Votre_Parc_Automobile_In_Accueil)){
		AssertionLibrary.assertEquals(getText(txt_Cout_De_Votre_Parc_Automobile_In_Accueil),
				"COÛT DE VOTRE PARC AUTOMOBILE", "Verify COÛT DE VOTRE PARC AUTOMOBILE section is displayed");
		}else{
			AssertionLibrary.fail("COÛT DE VOTRE PARC AUTOMOBILE section is not displayed");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertAccueilPrixBaremeSectionIsDisplayed()
	 * @MethodDescription - This method is used to verify if Prix_Bareme_Total
	 *                    is loaded in Home Page successfully
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAccueilPrixBaremeSectionIsDisplayed() {
		waitForElementToLoad(txt_Prix_Bareme_Total_In_Accueil);
		if(isDisplayed(txt_Prix_Bareme_Total_In_Accueil)){
		AssertionLibrary.assertEquals(getText(txt_Prix_Bareme_Total_In_Accueil), "PRIX BARÈME TOTAL",
				"Verify PRIX BARÈME TOTAL section is displayed");
		}else{
			AssertionLibrary.fail("PRIX BARÈME TOTAL section is not displayed");
		}
		
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertAccueilVotreStationSectionIsDisplayed()
	 * @MethodDescription - This method is used to verify if Votre_Station_Total
	 *                    is loaded in Home Page successfully
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertAccueilVotreStationSectionIsDisplayed() {
		waitForElementToLoad(txt_Votre_Station_Total_In_Accueil);
		if(isDisplayed(txt_Votre_Station_Total_In_Accueil)){
		AssertionLibrary.assertEquals(getText(txt_Votre_Station_Total_In_Accueil), "VOTRE STATION TOTAL",
				"Verify VOTRE STATION TOTAL section is displayed");

}else{
			AssertionLibrary.fail("VOTRE STATION TOTAL section is not displayed");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertTotalFleetAccueilPageIsDisplayed()
	 * @MethodDescription - This method is used to verify if Home Page is
	 *                    successfully displayed or not
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertTotalFleetAccueilPageIsDisplayed() {
		waitForElementToLoad(txt_Votre_Parc_In_Accueil);
		if(isDisplayed(txt_Votre_Parc_In_Accueil)){
		AssertionLibrary.assertEquals(getText(txt_Votre_Parc_In_Accueil), "VOTRE PARC",
				"Verify user is on Total Fleet home page.");
		}else{
			AssertionLibrary.fail("Total Fleet home page is not displayed");
		}
	}

	// ===================================================================================================================================================
	/**
	 * @MethodName - assertTotalLogoDisplay()
	 * @MethodDescription - This method is to verify the display of Total Logo
	 *                    on top left corner
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Sep 27,2019
	 * @param null
	 * @return void
	 */
	public void assertTotalLogoDisplay() {
		waitForElementToLoad(img_Total_Fleet_Logo_Top_Left);
		if(isDisplayed(img_Total_Fleet_Logo_Top_Left)){
		AssertionLibrary.verifyTrue(isDisplayed(img_Total_Fleet_Logo_Top_Left),
				"Verify Total Logo is displayed on top left corner");
		}else{
			AssertionLibrary.fail("Total Logo is not displayed on top left corner");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertRechercherDesTarifPageDisplay()
	 * @MethodDescription - This method is to verify the display of title Rechercher Des Tarifs in that Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019
	 * @param null
	 * @return void
	 */
	public void assertRechercherDesTarifPageDisplay() {
		waitForElementToLoad(txt_Rechercher_Des_Tarifs);
		if(isDisplayed(txt_Rechercher_Des_Tarifs)){
		AssertionLibrary.verifyTrue(isDisplayed(txt_Rechercher_Des_Tarifs),
				"Verify Rechercher Des Tarifs Page is displayed");
		}else{
			AssertionLibrary.fail("Rechercher Des Tarifs Page is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertDecouvrirLesTarifLinkDisplay()
	 * @MethodDescription - This method is to verify the display of title Decouvrir Les Tarifs in that Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 3,2019
	 * @param null
	 * @return void
	 */
	public void assertDecouvrirLesTarifLinkDisplay() {
		waitForElementToLoad(lnk_Decouvrir_Les_Tarifs);
		if(isDisplayed(lnk_Decouvrir_Les_Tarifs)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_Decouvrir_Les_Tarifs),
				"Verify Decouvrir Les Tarifs link is displayed");
		}else{
			AssertionLibrary.fail("Decouvrir Les Tarifs link is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertIntegrationDeVehiculesPageDisplay()
	 * @MethodDescription - This method is to verify the display of title Intégration de véhicules et de collaborateurs en masse in that Page
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertIntegrationDeVehiculesPageDisplay() {
		waitForElementToLoad(txt_Integration_de_vehicules_In_Votre_Parc);
		if(isDisplayed(txt_Integration_de_vehicules_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(txt_Integration_de_vehicules_In_Votre_Parc),
				"Verify Intégration de véhicules et de collaborateurs en masse page is displayed");
		}else{
			AssertionLibrary.fail("Intégration de véhicules et de collaborateurs en masse page is not displayed");
		}
		
		if(isDisplayed(txt_Etape1)){
		AssertionLibrary.verifyTrue(isDisplayed(txt_Etape1),
				"Verify ETape 1 text is displayed");
		}else{
			AssertionLibrary.fail("ETape 1 text is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertVehiculesImgDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of image vehicules in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertVehiculesImgDisplayInVotreParc() {
		if(isDisplayed(img_Vehicules_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(img_Vehicules_In_Votre_Parc),
				"Verify the display of Vehicules image in Votre Parc section");		
		}
	else{
		AssertionLibrary.fail("Vehicules image in Votre Parc section is not displayed");
	}
}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCollaborateursImgDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of image collaborateurs in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertCollaborateursImgDisplayInVotreParc() {
		if(isDisplayed(img_Collaborateurs_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(img_Collaborateurs_In_Votre_Parc),
				"Verify the display of Collaborateurs image in Votre Parc section");
		}
		else{
			AssertionLibrary.fail("Collaborateurs image in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCartesImgDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of image cartes in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertCartesImgDisplayInVotreParc() {
		if(isDisplayed(img_Cartes_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(img_Cartes_In_Votre_Parc),
				"Verify the display of Cartes image in Votre Parc section");		
		}else{
			AssertionLibrary.fail("Cartes image in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertBadgeImgDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of image badge in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertBadgeImgDisplayInVotreParc() {
		if(isDisplayed(img_Badge_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(img_Badge_In_Votre_Parc),
				"Verify the display of Badge image in Votre Parc section");		
		}else{
			AssertionLibrary.fail("Badge image in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertVehiculesCountAndLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of vehicules count and link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertVehiculesCountAndLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_VehiculesCount_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_VehiculesCount_In_Votre_Parc),
				"Verify the display of Vehicules count and link in Votre Parc section");
		}else{
			AssertionLibrary.fail("Vehicules count and link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCollaborateursCountAndLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of collaborateurs count and link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertCollaborateursCountAndLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_CollaborateursCount_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_CollaborateursCount_In_Votre_Parc),
				"Verify the display of Collaborateurs count and link in Votre Parc section");
		}else{
			AssertionLibrary.fail("Collaborateurs count and link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertCartesCountAndLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of cartes count and link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertCartesCountAndLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_CartesCount_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_CartesCount_In_Votre_Parc),
				"Verify the display of Cartes count and link in Votre Parc section");
		}else{
			AssertionLibrary.fail("Cartes count and link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertBadgeCountAndLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of badge count and link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertBadgeCountAndLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_BadgeCount_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_BadgeCount_In_Votre_Parc),
				"Verify the display of Badge count and link in Votre Parc section");	
		}else{
			AssertionLibrary.fail("Badge count and link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertNouveauVehiculesLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of nouveau vehicules link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertNouveauVehiculesLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_NouveauVehicule_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_NouveauVehicule_In_Votre_Parc),
				"Verify the display of Nouveau Vehicules link in Votre Parc section");
		}else{
			AssertionLibrary.fail("Nouveau Vehicules link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertNouveauCollaborateursLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of nouveau collaborateurs link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertNouveauCollaborateursLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_NouveauCollaborateur_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_NouveauCollaborateur_In_Votre_Parc),
				"Verify the display of Nouveau Collaborateurs link in Votre Parc section");	
		}else{
			AssertionLibrary.fail("Nouveau Collaborateurs link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertNouveauCartesLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of nouveau cartes link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertNouveauCartesLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_NouveauCarte_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_NouveauCarte_In_Votre_Parc),
				"Verify the display of Nouveau Cartes link in Votre Parc section");	
		}else{
			AssertionLibrary.fail("Nouveau Cartes link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================
	/**
	 * @MethodName - assertNouveauBadgeLinkDisplayInVotreParc()
	 * @MethodDescription - This method is to verify the display of nouveau badge link in votre parc section
	 * @AuthorName_AuthorID - Chamu_165450
	 * @Date - Oct 4,2019
	 * @param null
	 * @return void
	 */
	public void assertNouveauBadgeLinkDisplayInVotreParc() {
		if(isDisplayed(lnk_NouveauBadge_In_Votre_Parc)){
		AssertionLibrary.verifyTrue(isDisplayed(lnk_NouveauBadge_In_Votre_Parc),
				"Verify the display of Nouveau Badge link in Votre Parc section");	
		}else{
			AssertionLibrary.fail("Nouveau Badge link in Votre Parc section is not displayed");
		}
	}
	// ===================================================================================================================================================

	
	
	
	
	
	
	
	
	
	
	
}
