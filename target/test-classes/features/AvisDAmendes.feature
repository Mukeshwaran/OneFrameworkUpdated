#================================================================================================================================
#	@Feature_Name - Total_Fleet_AvisDAmendes
# @AuthorID_AuthorName - 593611_Mukesh
#	@Date - Oct 10,2019
#	@Feature_Description - Scenarios related to AvisDAmendes page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes derniers jours tab
#-------> TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes archives tab
#-------> TS_36_TC_47_Navigation to Amende creation page
#-------> TS_36_TC_47_Validation for amende creation page with annuler flow
#-------> TS_34_TC_45_Verify if the user is able to view the fine list page
#-------> close browser
#================================================================================================================================
@Total_Fleet_AvisDAmendes
Feature: Total_Fleet_AvisDAmendes

  Background: 
    Given A workbook named "AvisDAmendes" and sheet named "AvisDAmendes_Data" is read

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
  #Scenario_Name: TS_36_TC_47_Navigation to Amende creation page
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario: TS_36_TC_47_Navigation to Amende creation page
    When user clicks on Alertes_et_Amandes in left pane
    Then alertes and Avis_d_Amendes are displayed
    When user clicks on Avis_d_Amendes
    Then amendes page is displayed with two tabs with Amendes_Derniers_Joursn tab selected by default
    And filtrer les resultats button as well as nouvelle amende button is seen in amendes page
    When user clicks on Nouvelle amende button

  #================================================================================================================================
  #Scenario_Name: TS_36_TC_47_Validation for amende creation page with annuler flow
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_36_TC_47_Validation for amende creation page with annuler flow
    Then nouvelle amende page should contains all the appropriate fields
    When user enter aaa vehicule id in <immatriculationinAmendescreationpage> column with all the mandatory fields
    When user clicks annuler button in alertes creation page
    Then user should redirect to the amendes list page

    Examples: 
      | immatriculationinAmendescreationpage |
      | ImmatriculationInAmendesCreationPage |

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
  #Scenario_Name: TS_34_TC_45_Verify if the user is able to view the fine list page
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario: TS_34_TC_45_Verify if the user is able to view the fine list page
    When user clicks on Alertes_et_Amandes in left pane
    Then alertes and Avis_d_Amendes are displayed
    When user clicks on Avis_d_Amendes
    Then amendes page is displayed with two tabs with Amendes_Derniers_Joursn tab selected by default
    And verify all the content is loaded properly in amendes tab
    And verify all the content is loaded properly in amendes archivees tab

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
  #Scenario_Name: TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes derniers jours tab
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes derniers jours tab
    When user clicks on Alertes_et_Amandes in left pane
    Then alertes and Avis_d_Amendes are displayed
    When user clicks on Avis_d_Amendes
    And user clicks on filtrer les resultats in amendes derniers jours tab and filtres popup opens left side to enter dates as <date_de_declenchement_du_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_au_month> <date_de_declenchement_au_year> <date_de_declenchement_au_date> and clicks on appliquer les filtres
    Then amendes derniers jours data with filtered date de lancement row should be displayed with <date_de_declenchement_au_year> <date_de_declenchement_au_date> <date_de_declenchement_au_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_du_month> in alertes list page in both alertes a traiter tab and  toutes les alerts tab

    Examples: 
      | date_de_declenchement_du_month            | date_de_declenchement_du_year            | date_de_declenchement_du_date            | date_de_declenchement_au_month            | date_de_declenchement_au_year            | date_de_declenchement_au_date            |
      | Date_De_Declenchement_Du_Month_In_Filtres | Date_De_Declenchement_Du_Year_In_Filtres | Date_De_Declenchement_Du_Date_In_Filtres | Date_De_Declenchement_Au_Month_In_Filtres | Date_De_Declenchement_Au_Year_In_Filtres | Date_De_Declenchement_Au_Date_In_Filtres |

  #================================================================================================================================
  #Scenario_Name: TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes archives tab
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_35_TC_46_Verify if the user is able to apply date filters in fines list page amendes archives tab
    When user clicks on Accueil in left pane total home page should be displayed
    When user clicks on Alertes_et_Amandes in left pane
    Then alertes and Avis_d_Amendes are displayed
    When user clicks on Avis_d_Amendes
    And user clicks on amendes archives tab followed by filtrer les resultats and filtres popup opens left side to enter dates as <date_de_declenchement_du_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_au_month> <date_de_declenchement_au_year> <date_de_declenchement_au_date> and clicks on appliquer les filtres
    Then amendes archives data with filtered date de lancement row should be displayed with <date_de_declenchement_au_year> <date_de_declenchement_au_date> <date_de_declenchement_au_month> <date_de_declenchement_du_year> <date_de_declenchement_du_date> <date_de_declenchement_du_month> in alertes list page in both alertes a traiter tab and  toutes les alerts tab

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
