#================================================================================================================================
#	@Feature_Name - Total_Fleet_Rapports
# @AuthorID_AuthorName - 593611_Mukesh
#	@Date - Oct 31,2019
#	@Feature_Description - Scenarios related to Rapports page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials_Vos_Alertes
#-------> TS_28_TC_33_Verify if the user is able to view and apply filter and download the Etat Vehicules Parc Complet report
#-------> TS_28_TC_34_Verify if the user is able to view and apply filter and download the suivi consommation aux KM report
#-------> TS_28_TC_35_Verify if the user is able to view and apply filter and download the suivi budgetaire factures total report
#-------> close browser
#================================================================================================================================
@Total_Fleet_Rapports
Feature: Total_Fleet_Rapports

  Background: 
    Given A workbook named "Rapports" and sheet named "Rapports_Data" is read

  #================================================================================================================================
  #Scenario_Name: TS_01_TC_01_Login_With_Valid_Credentials
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login With Valid Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | motdepasse |
      | Email | Motdepasse |

  #================================================================================================================================
  #Scenario_Name: TS_28_TC_33_Verify if the user is able to view and apply filter and download the Etat Vehicules Parc Complet report
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_28_TC_33_Verify if the user is able to view and apply filter and download the Etat Vehicules Parc Complet report
    Given user clicks on Accepter in page footer to accept cookies
    When user clicks rapports in left panel
    Then user should navigate to rapports list page
    When user clicks  Generer un etat button in the Etat Vehicules Parc Complet report
    Then user should be navigated to Etat Vehicules Parc Complet report page
    And user should verify all the links are available in the Etat Vehicules Parc Complet report
    When user clicks export button in the report by providing relevant excel path <excel_path_prior_downloading> and <excel_path_post_downloading> and <excel_downloadedpath_VehiculesParcComplet_Rapports> and <excel_tobecopiedin_VehiculesParcComplet_Rapports> in the Etat Vehicules Parc Complet report
    Then excel file will be downloaded with the content which is available in the Etat Vehicules Parc Complet report page <excel_tobecopiedin_VehiculesParcComplet_Rapports>

    Examples: 
      | excel_path_prior_downloading | excel_downloadedpath_VehiculesParcComplet_Rapports | excel_tobecopiedin_VehiculesParcComplet_Rapports | excel_path_post_downloading |
      | Excel_Path_Prior_Downloading | Excel_DownloadedPath                               | Excel_ToBeCopied_Into_Project_Workspace          | Excel_Path_Post_Downloading |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser

  #================================================================================================================================
  #Scenario_Name: TS_01_TC_01_Login_With_Valid_Credentials
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login With Valid Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | motdepasse |
      | Email | Motdepasse |

  #================================================================================================================================
  #Scenario_Name: TS_28_TC_34_Verify if the user is able to view and apply filter and download the suivi consommation aux KM report
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_28_TC_34_Verify if the user is able to view and apply filter and download the suivi consommation aux KM report
    Given user clicks on Accepter in page footer to accept cookies
    When user clicks rapports in left panel
    Then user should navigate to rapports list page
    When user clicks  Generer un etat button in the suivi consommation aux km report
    Then system should show all the links available in the suivi consommation aux km report
    When user clicks on filtrer les resultats and select <select_year_in_du_periode_in_suivi_consommation_aux_report> <select_month_in_du_periode_in_suivi_consommation_aux_report> <select_year_in_au_periode_in_suivi_consommation_aux_report> <select_month_in_au_periode_in_suivi_consommation_aux_report> in the suivi consommation aux km report
    When user clicks export button in the report by providing relevant excel path <excel_path_prior_downloading> and <excel_path_post_downloading> and <excel_downloadedpath> and <excel_tobecopiedin_projectWorkspace> in the suivi consommation aux km report
    Then excel file will be downloaded with the content which is available in the suivi consommation aux km report page along with the filter values<excel_tobecopiedin_projectWorkspace>
    And close the browser

    Examples: 
      | excel_path_prior_downloading | excel_downloadedpath | excel_tobecopiedin_projectWorkspace     | excel_path_post_downloading | select_year_in_du_periode_in_suivi_consommation_aux_report | select_month_in_du_periode_in_suivi_consommation_aux_report | select_year_in_au_periode_in_suivi_consommation_aux_report | select_month_in_au_periode_in_suivi_consommation_aux_report |
      | Excel_Path_Prior_Downloading | Excel_DownloadedPath | Excel_ToBeCopied_Into_Project_Workspace | Excel_Path_Post_Downloading | Select_Year_In_Du_Periode_In_Suivi_Consommation_Aux_Report | Select_Month_In_Du_Periode_In_Suivi_Consommation_Aux_Report | Select_Year_In_Au_Periode_In_Suivi_Consommation_Aux_Report | Select_Month_In_Au_Periode_In_Suivi_Consommation_Aux_Report |

  #======================================================================================================================================================
  #Scenario_Name: Login application
  #======================================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login With Valid Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | motdepasse |
      | Email | Motdepasse |

  #================================================================================================================================
  #Scenario_Name: TS_28_TC_35_Verify if the user is able to view and apply filter and download the suivi budgetaire factures total report
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_28_TC_35_Verify if the user is able to view and apply filter and download the suivi budgetaire factures total report
    Given user clicks on Accepter in page footer to accept cookies
    When user clicks rapports in left panel
    Then user should navigate to rapports list page
    When user clicks  Generer un etat button in the suivi budgetaire factures total report
    Then system should show all the links available in the suivi budgetaire factures total report
    When user clicks on filtrer les resultats and select <select_year_in_du_periode_in_suivi_budgetaire_factures_total_report> <select_month_in_du_periode_in_suivi_budgetaire_factures_total_report> <select_year_in_au_periode_in_suivi_budgetaire_factures_total_report> <select_month_in_au_periode_in_suivi_budgetaire_factures_total_report> in suivi budgetaire factures total report
    When user clicks export button in the report by providing relevant excel path <excel_path_prior_downloading> and <excel_path_post_downloading> and <excel_downloadedpath> and <excel_tobecopiedin_projectWorkspace> in the suivi budgetaire factures total report
    Then excel file will be downloaded with the content which is available in the suivi budgetaire factures total report page along with the filter values <excel_tobecopiedin_projectWorkspace>

    Examples: 
      | excel_path_prior_downloading | excel_downloadedpath | excel_tobecopiedin_projectWorkspace     | excel_path_post_downloading | select_year_in_du_periode_in_suivi_budgetaire_factures_total_report | select_month_in_du_periode_in_suivi_budgetaire_factures_total_report | select_year_in_au_periode_in_suivi_budgetaire_factures_total_report | select_month_in_au_periode_in_suivi_budgetaire_factures_total_report |
      | Excel_Path_Prior_Downloading | Excel_DownloadedPath | Excel_ToBeCopied_Into_Project_Workspace | Excel_Path_Post_Downloading | Select_Year_In_Du_Periode_In_Suivi_budgetaire_Factures_Total_Report | Select_Month_In_Du_Periode_In_Suivi_budgetaire_Factures_Total_Report | Select_Year_In_Au_Periode_In_Suivi_budgetaire_Factures_Total_Report | Select_Month_In_Au_Periode_In_Suivi_budgetaire_Factures_Total_Report |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
