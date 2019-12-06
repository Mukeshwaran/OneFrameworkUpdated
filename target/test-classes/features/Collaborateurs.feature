#================================================================================================================================
#	@Feature_Name - Total_Fleet_Collaborateurs
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 11,2019
#	@Feature_Description - Scenarios related to Collaborateurs page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_12_TC_13_Navigation to Contributor List Page
#-------> TS_13_TC_14_Navigation to Contributor Detailed Page
#-------> TS_32_TC_43_Creation of Collaborateur with Annuler Flow
#-------> close browser
#================================================================================================================================
@Total_Fleet_Collaborateurs
Feature: Total_Fleet_Collaborateurs

  #================================================================================================================================
  Background: 
    Given A workbook named "Collaborateurs" and sheet named "Collaborateurs_Data" is read

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
  # Scenario_Name - TS_12_TC_13_Navigation to Contributor List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_12_TC_13_Navigation to Contributor List Page
    When user clicks on Collaborateurs in left pane
    Then Collaborateurs List Page should be displayed
    When user enters <collaborateur_name_in_Rechercher_un_collaborateur>
    Then searched <collaborateur_name_in_Rechercher_un_collaborateur> row should be filtered and shown in the list page

    Examples: 
      | collaborateur_name_in_Rechercher_un_collaborateur    |
      | CollaborateurNameToSearchInRechercheruncollaborateur |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser

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
  # Scenario_Name - TS_13_TC_14_Navigation to Contributor Detailed Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_13_TC_14_Navigation to Contributor Detailed Page
    #When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on Collaborateur image in Votre Parc section
    Then Collaborateurs List Page should be displayed
    When <collaborateur_Nom_in_list_page> is entered in rechercher une collaborateur and the resulted row is clicked
    Then Collaborateur Detailed Page should be displayed with selected <collaborateur_Nom_in_list_page> and other tabs

    Examples: 
      | collaborateur_Nom_in_list_page       |
      | SelectCollaborateurNomInCollListPage |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser

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
  # Scenario_Name - TS_32_TC_43_Creation of Collaborateur with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_32_TC_43_Creation of Collaborateur with Annuler Flow
    When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on nouveau collaborateur link in Votre Parc section
    Then nouveau collaborateur page should be displayed with relevant fields
    And nouveau collaborateur Page mandatory fields such as <nom_in_nouveau_collaborateur> <prenom_in_nouveau_collaborateur> <email_in_nouveau_collaborateur> <mobile_in_nouveau_collaborateur> are set and annuler button is selected
    Then Collaborateurs List Page should be displayed

    #And close the browser
    Examples: 
      | nom_in_nouveau_collaborateur | prenom_in_nouveau_collaborateur | email_in_nouveau_collaborateur | mobile_in_nouveau_collaborateur |
      | Nom_In_Nouveau_Collaborateur | Prenom_In_Nouveau_Collaborateur | Email_In_Nouveau_Collaborateur | Mobile_In_Nouveau_Collaborateur |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
