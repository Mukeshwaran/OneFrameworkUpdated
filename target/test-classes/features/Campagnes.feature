#================================================================================================================================
#	@Feature_Name - Total_Fleet_Campagnes
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 22,2019
#	@Feature_Description - Scenarios related to Campagnes page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_25_TC_26_Navigation to Campgnes List Page
#-------> TS_27_TC_28_Creation of Campagnes with Annuler Flow
#-------> TS_26_TC_27_Filter Campaign List With Dates
#-------> close browser
#================================================================================================================================
@Total_Fleet_Campagnes
Feature: Total_Fleet_Campagnes

  #================================================================================================================================
  Background: 
    Given A workbook named "Campagnes" and sheet named "Campagnes_Data" is read

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Valid_Credentials
  # @AuthorID_AuthorName - 165450_Chamu
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
  # Scenario_Name - TS_25_TC_26_Navigation to Campgnes List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_25_TC_26_Navigation to Campgnes List Page
    When user clicks on campaign in left menu
    Then campaign list page should be displayed

  #================================================================================================================================
  # Scenario_Name - TS_27_TC_28_Creation of Campagnes with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_27_TC_28_Creation of Campagnes with Annuler Flow
    When user clicks on nouvelle campagne button
    Then nouvelle campagne page should be displayed and user inputs <nom_de_la_campagne_in_nouvelle_campagne_page> and clicks on annuler button to view campgnes list page

    Examples: 
      | nom_de_la_campagne_in_nouvelle_campagne_page |
      | Nom_De_La_Campagne_In_Nouvelle_Campagne_Page |

  #================================================================================================================================
  # Scenario_Name - TS_26_TC_27_Filter Campaign List With Dates
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_26_TC_27_Filter Campaign List With Dates
    When user clicks on filtrer les resultats
    And filtres popup opens left side and user enters <date_de_lancement_du_month> <date_de_lancement_du_year> <date_de_lancement_du_date> <date_de_lancement_au_month> <date_de_lancement_au_year> <date_de_lancement_au_date> and clicks on appliquer les filtres
    Then campagnes data with filtered date de lancement row should be displayed with <date_de_lancement_au_year> <date_de_lancement_au_date> <date_de_lancement_au_month> in campagnes list page

    #And close the browser
    Examples: 
      | date_de_lancement_du_month            | date_de_lancement_du_year            | date_de_lancement_du_date            | date_de_lancement_au_month            | date_de_lancement_au_year            | date_de_lancement_au_date            |
      | Date_De_Lancement_Du_Month_In_Filtres | Date_De_Lancement_Du_Year_In_Filtres | Date_De_Lancement_Du_Date_In_Filtres | Date_De_Lancement_Au_Month_In_Filtres | Date_De_Lancement_Au_Year_In_Filtres | Date_De_Lancement_Au_Date_In_Filtres |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
