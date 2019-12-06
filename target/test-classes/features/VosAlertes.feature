#================================================================================================================================
#	@Feature_Name - Total_Fleet_VosAlertes
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 17,2019
#	@Feature_Description - Scenarios related to Factures page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials_Vos_Alertes
#-------> TS_28_TC_29_Validate Alertes List Page
#-------> TS_29_TC_30_Validate Date De Declenchment Filter in Alertes List Page
#-------> close browser
#================================================================================================================================
@Total_Fleet_VosAlertes
Feature: Total_Fleet_Factures

  #================================================================================================================================
  Background: 
    Given A workbook named "VosAlertes" and sheet named "VosAlertes_Data" is read

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Valid_Credentials_Vos_Alertes
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials_Vos_Alertes
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  # Scenario_Name - TS_28_TC_29_Validate Alertes List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_28_TC_29_Validate Alertes List Page
    Given vos alertes under alertes et amendes is clicked on left pane
    Then two tabs namely alertes a traiter and toutes les alertes are available
    And user searches in rechercher une alerte as <search_in_alertes_a_traiter> in alertes a traiter and checks if relevant data is filtered
    And user clicks on toutes les alertes and searches in rechercher une alerte as <search_in_toutes_les_alertes> and checks if relevant data is filtered

    Examples: 
      | email | mot_de_passe | search_in_alertes_a_traiter               | search_in_toutes_les_alertes               |
      | Email | Mot_de_passe | Search_In_Rechercher_In_Alertes_A_Traiter | Search_In_Rechercher_In_Toutes_Les_Alertes |

  #================================================================================================================================
  # Scenario_Name - TS_29_TC_30_Validate Date De Declenchment Filter in Alertes List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_29_TC_30_Validate Date De Declenchment Filter in Alertes List Page
    When user clicks on Accueil in left pane total home page should be displayed
    Given vos alertes under alertes et amendes is clicked on left pane
    And user clics on filtrer les resultats and filtres popup opens left side to enter dates as <date_de_declenchement_du_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_au_month> <date_de_declenchement_au_year> <date_de_declenchement_au_date> and clicks on appliquer les filtres
    Then alertes data with filtered date de lancement row should be displayed with <date_de_declenchement_au_year> <date_de_declenchement_au_date> <date_de_declenchement_au_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_du_month> in alertes list page in both alertes a traiter tab and  toutes les alerts tab

    Examples: 
      | date_de_declenchement_du_month            | date_de_declenchement_du_year            | date_de_declenchement_du_date            | date_de_declenchement_au_month            | date_de_declenchement_au_year            | date_de_declenchement_au_date            |
      | Date_De_Declenchement_Du_Month_In_Filtres | Date_De_Declenchement_Du_Year_In_Filtres | Date_De_Declenchement_Du_Date_In_Filtres | Date_De_Declenchement_Au_Month_In_Filtres | Date_De_Declenchement_Au_Year_In_Filtres | Date_De_Declenchement_Au_Date_In_Filtres |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
