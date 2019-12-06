package org.cts.oneframework.cucumber.stepdefinition;

import cucumber.api.java.en.And;
import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import cucumber.api.java.en.When;

public class AccueilStepDefs extends AbstractSteps {
	public AccueilStepDefs() {
		super();
	}
	
	// ===================================================================================================================================================
	// Scenario: TS_02_TC_02_verify home page sections and left menu
	// ===================================================================================================================================================
	@Given("user is in total fleet home page")
	public void user_is_in_total_fleet_home_page() {
		System.out.println("In Stepdefs");
		getPageObjectManager().getAccueilPage().assertTotalFleetAccueilPageIsDisplayed();
	}

	@Then("user should be able to view total fleet logo along with left side menus")
	public void user_should_be_able_to_view_total_fleet_logo_along_with_a_left_side_menu() {
		getPageObjectManager().getAccueilPage().assertTotalLogoDisplay();
		getPageObjectManager().getAccueilPage().assertAccueilDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertSuiviDesCoutsDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertAlertesEtAmendesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertTousVosVehiculesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertVosVehiculesConnectesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertCollaborateursDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertCartesEtBadgesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertContratsFournisseursEtFacturesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertCampagnesDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertFiscaliteDisplayInLeftPane();
		getPageObjectManager().getAccueilPage().assertRapportsDisplayInLeftPane();
	}

	@And("the following sections namely votre parc and cout de votre parc automobile and prix bareme total and votre station total")
	public void the_following_sections_namely_votre_parc_and_cout_de_votre_parc_automobile_and_prix_bareme_total_and_votre_station_total() {
		getPageObjectManager().getAccueilPage().assertAccueilVotreParcSectionIsDisplayed();
		getPageObjectManager().getAccueilPage().assertAccueilCoutSectionIsDisplayed();
		getPageObjectManager().getAccueilPage().assertAccueilPrixBaremeSectionIsDisplayed();
		getPageObjectManager().getAccueilPage().assertAccueilVotreStationSectionIsDisplayed();

	}

	// ===================================================================================================================================================
	// Scenario: TS_04_TC_04_verify Votre Parc Section
	// ===================================================================================================================================================
	@When("user views votre parc section it should show icons for Vehicules Collaborateurs Cartes and Badge with relevant counts")
	public void user_views_votre_parc_section_it_should_show_icons_for_Vehicules_Collaborateurs_Cartes_and_Badge_with_relevant_counts() {
		getPageObjectManager().getAccueilPage().assertVehiculesImgDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertCollaborateursImgDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertCartesImgDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertBadgeImgDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertVehiculesCountAndLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertCollaborateursCountAndLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertCartesCountAndLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertBadgeCountAndLinkDisplayInVotreParc();
	}

	@And("every part should have Nouveau button based on access levels")
	public void every_part_should_have_Nouveau_button_based_on_access_levels() {
		getPageObjectManager().getAccueilPage().assertNouveauVehiculesLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertNouveauCollaborateursLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertNouveauCartesLinkDisplayInVotreParc();
		getPageObjectManager().getAccueilPage().assertNouveauBadgeLinkDisplayInVotreParc();
	}

	@Then("Integration_de_vehicules_et_de_collaborateurs_en_masse link is available which on clicking takes us to relevant page")
	public void integration_de_vehicules_et_de_collaborateurs_en_masse_link_is_available_which_on_clicking_takes_us_to_relevant_page() {
		getPageObjectManager().getAccueilPage().clickIntegrationdeVehiculesInVotreParc();
		getPageObjectManager().getAccueilPage().assertIntegrationDeVehiculesPageDisplay();
		
	}
	// ===================================================================================================================================================
	// Scenario: TS_05_TC_05_verify Prix Bareme Total section
	// ===================================================================================================================================================
	@When("Decouvrir les tarifs link is present")
	public void decouvrir_les_tarifs_link_is_present() {
		getPageObjectManager().getCommonPage().clickAccueilLinkInLeftPane();
		getPageObjectManager().getAccueilPage().assertDecouvrirLesTarifLinkDisplay();
	}

	@When("user clicks on Decouvrir les tarifs link")
	public void user_clicks_on_Decouvrir_les_tarifs_link() {
		getPageObjectManager().getAccueilPage().scrollDownInNouveauVehiculePage();
		getPageObjectManager().getAccueilPage().clickDecouvrirLesTarifs();
	}

	@Then("Rechercher Des Tarifs page is displayed")
	public void rechercher_Des_Tarifs_page_is_displayed() {
		getPageObjectManager().getAccueilPage().assertRechercherDesTarifPageDisplay();
	}
}
