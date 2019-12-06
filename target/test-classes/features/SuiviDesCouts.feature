#================================================================================================================================
#	@Feature_Name - Total_Fleet_SuiviDesCouts
# @AuthorID_AuthorName - 593611_Mukesh
#	@Date - Oct 10,2019
#	@Feature_Description - Scenarios related to Suivi Des Couts page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_29_TC_36_Verify all the four tabs are loading properly in the Cost tracking portlet
#-------> TS_29_TC_37_Verify excel download in Evolution Des Couts in Suivi Des Couts page
#-------> TS_29_TC_37_Verify excel download in Couts Moyens Par Collaborateur in Suivi Des Couts page
#-------> TS_29_TC_37_Verify excel download in Couts Moyens Par Vehicule in Suivi Des Couts page
#-------> TS_29_TC_37_Verify excel download in Suivi Des Transactions Total pre and post filter in Suivi Des Couts page
#-------> TS_29_TC_38_Verify if the user able to apply the filter in all the four tabs in cost tracking portlet
#-------> close browser
#================================================================================================================================
@Total_Fleet_SuiviDesCouts
Feature: Total_Fleet_SuiviDesCouts

  #================================================================================================================================
  #Scenario_Name: TS_01_TC_01_Login_With_Valid_Credentials
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  Background: 
    Given A workbook named "SuiviDesCouts" and sheet named "SuiviDesCouts_data" is read

  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_29_TC_36_Verify all the four tabs are loading properly in the Cost tracking portlet
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario: TS_29_TC_36_Verify all the four tabs are loading properly in the Cost tracking portlet
    When user clicks on suivi des couts in left pane
    Then user should be navigated to suivi des couts
    And the title of suivi des couts should be displayed with four tabs namely evolution_des_couts_ttc and couts_moyens_par_collaborateur_ttc and couts_moyens_par_vehicule_ttc and suivi_des_transactions_total

  #=============================================================================================================================================================================
  #Scenario_Name: TS_29_TC_38_Verify if the user able to apply the filter in all the four tabs in cost tracking portlet
  #@AuthorID_AuthorName - 593611_Mukesh
  #=============================================================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_38_Verify if the user able to apply the filter in all the four tabs in cost tracking portlet
    When user clicks on Accueil in left pane total home page should be displayed
    When user clicks on suivi des couts in left pane
    When user is applying periode filter in all the four tabs <select_year_in_du_periode_in_evolutionDesCoutstab> <select_month_in_du_periode_in_evolutionDesCoutstab> <select_year_in_au_periode_in_evolutionDesCoutstab> <select_month_in_au_periode_in_evolutionDesCoutstab> <select_year_in_du_periode_in_coutsMoyensParCollaborateurTTCTab> <select_month_in_du_periode_in_coutsMoyensParCollaborateurTTCTab> <select_year_in_au_periode_in_coutsMoyensParCollaborateurTTCTab> <select_month_in_au_periode_in_coutsMoyensParCollaborateurTTCTab> <select_year_in_du_periode_in_CoutsMoyensParvehiculeTTCTab> <select_month_in_du_periode_in_CoutsMoyensParvehiculeTTCTab> <select_year_in_au_periode_in_CoutsMoyensParvehiculeTTCTab> <select_month_in_au_periode_in_CoutsMoyensParvehiculeTTCTab> results should be displayed accordingly

    Examples: 
      | select_year_in_du_periode_in_evolutionDesCoutstab | select_month_in_du_periode_in_evolutionDesCoutstab | select_year_in_au_periode_in_evolutionDesCoutstab | select_month_in_au_periode_in_evolutionDesCoutstab | select_year_in_du_periode_in_coutsMoyensParCollaborateurTTCTab | select_month_in_du_periode_in_coutsMoyensParCollaborateurTTCTab | select_year_in_au_periode_in_coutsMoyensParCollaborateurTTCTab | select_month_in_au_periode_in_coutsMoyensParCollaborateurTTCTab | select_year_in_du_periode_in_CoutsMoyensParvehiculeTTCTab | select_month_in_du_periode_in_CoutsMoyensParvehiculeTTCTab | select_year_in_au_periode_in_CoutsMoyensParvehiculeTTCTab | select_month_in_au_periode_in_CoutsMoyensParvehiculeTTCTab |
      | Select_Year_In_Du_Periode_In_EvolutionDesCoutstab | Select_Month_In_Du_Periode_In_EvolutionDesCoutstab | Select_Year_In_Au_Periode_In_EvolutionDesCoutstab | Select_Month_In_Au_Periode_In_EvolutionDesCoutstab | Select_Year_In_Du_Periode_In_coutsMoyensParCollaborateurTTCTab | Select_Month_In_Du_Periode_In_coutsMoyensParCollaborateurTTCTab | Select_Year_In_Au_Periode_In_coutsMoyensParCollaborateurTTCTab | Select_Month_In_Au_Periode_In_coutsMoyensParCollaborateurTTCTab | Select_Year_In_Du_Periode_In_CoutsMoyensParvehiculeTTCTab | Select_Month_In_Du_Periode_In_CoutsMoyensParvehiculeTTCTab | Select_Year_In_Au_Periode_In_CoutsMoyensParvehiculeTTCTab | Select_Month_In_Au_Periode_In_CoutsMoyensParvehiculeTTCTab |

  #================================================================================================================================
  #Scenario_Name: TS_29_TC_37_Verify excel download in Evolution Des Couts in Suivi Des Couts page
  #@AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_37_Verify excel download in Evolution Des Couts in Suivi Des Couts page
    When user clicks on Accueil in left pane total home page should be displayed
    When user clicks on suivi des couts in left pane
    Then user should be navigated to suivi des couts
    When excel download button in evolution des couts tab is clicked with <excel_path_prior_downloading> <excel_path_post_downloading> <excel_downloadedpath> <excel_to_be_copied_into_project_Workspace>
    Then evolution des couts excel file should be downloaded as <excel_to_be_copied_into_project_Workspace> and it should match with table contents in evolution des couts tab

    Examples: 
      | excel_path_prior_downloading | excel_path_post_downloading | excel_downloadedpath | excel_to_be_copied_into_project_Workspace |
      | Excel_Path_Prior_Downloading | Excel_Path_Post_Downloading | Excel_DownloadedPath | Excel_To_Be_Copied_Into_Project_Workspace |

  #================================================================================================================================
  #Scenario_Name: TS_29_TC_37_Verify excel download in Couts Moyens Par Collaborateur in Suivi Des Couts page
  #@AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_37_Verify excel download in Couts Moyens Par Collaborateur in Suivi Des Couts page
    When couts moyens par collaborateur tab is selected
    When excel download button in couts moyens par collaborateur tab is clicked with <excel_path_prior_downloading> <excel_path_post_downloading> <excel_downloadedpath> <excel_to_be_copied_into_project_Workspace>
    Then couts moyens par collaborateur excel file should be downloaded as <excel_to_be_copied_into_project_Workspace> and it should match with table contents in couts moyens par collaborateur tab

    Examples: 
      | excel_path_prior_downloading | excel_path_post_downloading | excel_downloadedpath | excel_to_be_copied_into_project_Workspace |
      | Excel_Path_Prior_Downloading | Excel_Path_Post_Downloading | Excel_DownloadedPath | Excel_To_Be_Copied_Into_Project_Workspace |

  #================================================================================================================================
  #Scenario_Name: TS_29_TC_37_Verify excel download in Couts Moyens Par Vehicule in Suivi Des Couts page
  #@AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_37_Verify excel download in Couts Moyens Par Vehicule in Suivi Des Couts page
    When couts moyens par vehicule tab is selected
    When excel download button in couts moyens par vehicule tab is clicked with <excel_path_prior_downloading> <excel_path_post_downloading> <excel_downloadedpath> <excel_to_be_copied_into_project_Workspace>
    Then couts moyens par vehicule excel file should be downloaded as <excel_to_be_copied_into_project_Workspace> and it should match with table contents in couts moyens par vehicule tab

    Examples: 
      | excel_path_prior_downloading | excel_path_post_downloading | excel_downloadedpath | excel_to_be_copied_into_project_Workspace |
      | Excel_Path_Prior_Downloading | Excel_Path_Post_Downloading | Excel_DownloadedPath | Excel_To_Be_Copied_Into_Project_Workspace |

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
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_29_TC_37_Verify excel download in Suivi Des Transactions Total pre and post filter in Suivi Des Couts page
  #@AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_37_Verify excel download in Suivi Des Transactions Total pre and post filter in Suivi Des Couts page
    When user clicks on suivi des couts in left pane
    When suivi des transactions total tab is selected
    When excel download button in suivi des transactions total tab is clicked with <excel_path_prior_downloading> <excel_path_post_downloading> <excel_downloadedpath> <excel_to_be_copied_into_project_Workspace> and check if it is downloaded

    Examples: 
      | excel_path_prior_downloading | excel_path_post_downloading | excel_downloadedpath | excel_to_be_copied_into_project_Workspace |
      | Excel_Path_Prior_Downloading | Excel_Path_Post_Downloading | Excel_DownloadedPath | Excel_To_Be_Copied_Into_Project_Workspace |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
