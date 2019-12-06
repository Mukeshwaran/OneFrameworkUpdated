#================================================================================================================================
#	@Feature_Name - Total_Fleet_Accueil
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 4,2019
#	@Feature_Description - Scenarios related to Accueil page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Invalid_Credentials
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_03_TC_03_verify home page sections and left menu
#-------> TS_05_TC_06_verify Votre Parc Section
#-------> TS_06_TC_07_verify Prix Bareme Total section
#-------> close browser
#================================================================================================================================
@Total_Fleet_Accueil
Feature: Total_Fleet_Accueil

  #================================================================================================================================
  Background: 
    Given A workbook named "Accueil" and sheet named "Accueil_Data" is read

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Invalid_Credentials
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Invalid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then system shows an error message

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Valid_Credentials
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  # Scenario_Name - TS_03_TC_03_verify home page sections and left menu
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_03_TC_03_verify home page sections and left menu
    Given user is in total fleet home page
    Then user should be able to view total fleet logo along with left side menus
    And the following sections namely votre parc and cout de votre parc automobile and prix bareme total and votre station total

  #================================================================================================================================
  # Scenario_Name - TS_05_TC_06_verify Votre Parc Section
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_05_TC_06_verify Votre Parc Section
    When user views votre parc section it should show icons for Vehicules Collaborateurs Cartes and Badge with relevant counts
    And every part should have Nouveau button based on access levels
    And Integration_de_vehicules_et_de_collaborateurs_en_masse link is available which on clicking takes us to relevant page

  #================================================================================================================================
  # Scenario_Name - TS_06_TC_07_verify Prix Bareme Total section
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_06_TC_07_verify Prix Bareme Total section
    When Decouvrir les tarifs link is present
    And user clicks on Decouvrir les tarifs link
    Then Rechercher Des Tarifs page is displayed

  #================================================================================================================================
  # Scenario_Name - TS_02_TC_02_Login_With_MultiAccount_Credentials
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  #@Smoke @abc
  #Scenario Outline: TS_02_TC_02_Login_With_MultiAccount_Credentials
  #Given user launches browser and opens total fleet application url
  #When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
  #Then system shows multiple accounts so that user chooses the relevant <identifiant_in_veuillez_select_page> <prenom_in_veuillez_select_page>
  #
  #Examples:
  #| email | mot_de_passe | identifiant_in_veuillez_select_page | prenom_in_veuillez_select_page |
  #| Email | Mot_de_passe | Identifiant_In_Veuillez_Select_Page | Prenom_In_Veuillez_Select_Page |
  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
