package org.cts.oneframework.cucumber.stepdefinition;

import org.cts.oneframework.configprovider.ConfigProvider;
import org.cts.oneframework.utilities.WaitUtils;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class CommonStepDefs extends AbstractSteps {
	public CommonStepDefs() {
		super();
	}

	// ===================================================================================================================================================
	// Scenario Outline: TS_01_TC_01_Login_With_Invalid_Credentials
	// ===================================================================================================================================================
	@Then("system shows an error message")
	public void system_shows_an_error_message() {
		getPageObjectManager().getCommonPage().assertErrorMessageOnInvalidLogin();
	}

	// ===================================================================================================================================================
	// Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
	// ===================================================================================================================================================
	@Given("user launches browser and opens total fleet application url")
	public void user_launches_browser_and_opens_total_fleet_application_url() {
		//getPageObjectManager().getCommonPage().setChromeDownloadDirectoryBeforeDowloads();
		startDriver();		
		getPageObjectManager().getCommonPage().deleteCookiesFromBrowser();
		getPageObjectManager().getCommonPage().get(ConfigProvider.getAsString("url"));
	}

	@When("^user inputs (.*) and (.*) and clicks on Se_Connecter button$")
	public void user_inputs_login_credentials_and_click_se_connecter(String Email, String Mot_de_passe) {
		getPageObjectManager().getCommonPage().setEmail(DefaultStepDefinition.getCellData(Email));
		getPageObjectManager().getCommonPage().setmotdepasse(DefaultStepDefinition.getCellData(Mot_de_passe));
		WaitUtils.sleep(3500);
		getPageObjectManager().getCommonPage().clickSeConnecter();
	}

	@Then("user should be able to view total fleet home page with total fleet logo")
	public void user_should_be_able_to_view_total_fleet_home_page_with_total_fleet_logo() {
		getPageObjectManager().getCommonPage().clickCloseButtonInConditionPopup();
		getPageObjectManager().getCommonPage().assertTotalFleetHomePageIsDisplayed();
	}

	// ===================================================================================================================================================
	// Scenario: TS_13_TC_14_Navigation to Contributor Detailed Page
	// ===================================================================================================================================================
	@When("user clicks on Accueil in left pane total home page should be displayed")
	public void user_clicks_on_Accueil_in_left_pane_total_home_page_should_be_displayed() {
		getPageObjectManager().getCommonPage().clickAccueilLinkInLeftPane();
		getPageObjectManager().getCommonPage().assertTotalFleetHomePageIsDisplayed();
	}
	// ===================================================================================================================================================
	// Scenario: TS_16_TC_17_Navigation to Cartes Detailed Page
	// ===================================================================================================================================================

	@Given("user clicks on Accepter in page footer to accept cookies")
	public void user_clicks_on_Accepter_in_page_footer_to_accept_cookies() {
		getPageObjectManager().getCommonPage().clickAccepterToAcceptCookiesInBottomOfThePage();
	}
	// ===================================================================================================================================================
	// Scenario: TS_24_TC_25_Verification of excel file download from Suivi D
	// Integration Des Factures
	// ===================================================================================================================================================

	@Given("set download path in chrome directory")
	public void set_download_path_in_chrome_directory() {
		//getPageObjectManager().getCommonPage().setChromeDownloadDirectoryBeforeDowloads();
	}
	// ===================================================================================================================================================
	// Scenario: TS_02_TC_02_Login_With_MultiAccount_Credentials
	// ===================================================================================================================================================
	
	@Then("system shows multiple accounts so that user chooses the relevant (.*) (.*)")
	public void system_shows_multiple_accounts_to_choose(String Identifiant_In_Veuillez_Select_Page, String Prenom_In_Veuillez_Select_Page){
		WaitUtils.sleep(4000);
		getPageObjectManager().getCommonPage().chooseFromMultiAccountInVeuillezSelectPage(DefaultStepDefinition.getCellData(Identifiant_In_Veuillez_Select_Page));
		getPageObjectManager().getCommonPage().clickSelectionnerInVeuilleSelectPage();
		getPageObjectManager().getHeaderComptePage().assertUserNameInHeader(DefaultStepDefinition.getCellData(Prenom_In_Veuillez_Select_Page));
		getPageObjectManager().getHeaderComptePage().clickUserNameInHeader();
		getPageObjectManager().getHeaderComptePage().assertUserIdentifiantInHeader(DefaultStepDefinition.getCellData(Identifiant_In_Veuillez_Select_Page));
	}
	
	@And("close the browser")
	public void close_browser(){
		stopDriver();
	}
	
}
