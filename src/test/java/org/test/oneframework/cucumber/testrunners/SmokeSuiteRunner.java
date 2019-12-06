package org.cts.oneframework.cucumber.testrunners;

import org.cts.oneframework.cucumber.AbstractTestNGCucumberTest;

import cucumber.api.CucumberOptions;

@CucumberOptions(
		features = {"src/test/resources/features"},
		glue = {"org.cts.oneframework.cucumber.stepdefinition"},
		tags = {"@Total_Fleet_Accueil, @Total_Fleet_AvisDAmendes, @Total_Fleet_Campagnes, @Total_Fleet_CartesAndBadges, @Total_Fleet_Collaborateurs, @Total_Fleet_ContratsFournisseurs, @Total_Fleet_Factures, @Total_Fleet_HeaderCompte, @Total_Fleet_VosAlertes, @Total_Fleet_Fiscalite, @Total_Fleet_Rapports, @Total_Fleet_SuiviDesCouts, @Total_Fleet_TousVosVehicules"},
		monochrome=true,
		plugin = { "pretty","com.aventstack.extentreports.cucumber.adapter.ExtentCucumberAdapter:"} )

public class SmokeSuiteRunner extends AbstractTestNGCucumberTest {

}


