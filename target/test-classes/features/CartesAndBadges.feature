#================================================================================================================================
#	@Feature_Name - Total_Fleet_CartesAndBadges
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 11,2019
#	@Feature_Description - Scenarios related to CartesAndBadges page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_14_TC_15_Navigation to Cartes List Page
#-------> TS_16_TC_17_Navigation to Cartes Detailed Page
#-------> TS_15_TC_16_Creation of Code Conducteur with Annuler Flow
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_18_TC_19_Navigation to Badge List Page
#-------> TS_19_TC_20_Navigation to Badges Detailed Page
#-------> TS_04_TC_04_Search Cartes from Common Rechercher at header of application
#-------> TS_17_TC_18_Verification of Creation De Support page display for Carte
#-------> TS_20_TC_21_Verification of Creation De Support page display for Badge
#-------> close browser
#================================================================================================================================
@Total_Fleet_CartesAndBadges
Feature: Total_Fleet_CartesAndBadges

  #================================================================================================================================
  Background: 
    Given A workbook named "CardsAndBadges" and sheet named "CardsAndBadges_Data" is read

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
  # Scenario_Name - TS_14_TC_15_Navigation to Cartes List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_14_TC_15_Navigation to Cartes List Page
    Given user clicks on Cartes image in Votre Parc section
    Then cartes list Page should be displayed
    When carte numero is entered in rechercher une carte as <carte_Numero_in_Rechercher_une_carte>
    Then searched carte numero in rechercher une carte row should be filtered and shown in the list page as <carte_Numero_in_Rechercher_une_carte>

    Examples: 
      | carte_Numero_in_Rechercher_une_carte           |
      | Carte_Numero_To_Search_In_Rechercher_Une_Carte |

  #================================================================================================================================
  # Scenario_Name - TS_16_TC_17_Navigation to Cartes Detailed Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke 
  Scenario Outline: TS_16_TC_17_Navigation to Cartes Detailed Page
    When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on Cartes image in Votre Parc section
    Then cartes list Page should be displayed
    Given user clicks on Accepter in page footer to accept cookies
    When carte numero as <carte_Numero_in_List_Page> is clicked in Cartes List Page
    Then Cartes Detailed Page should be displayed with selected <carte_Numero_in_List_Page> and other tabs

    Examples: 
      | carte_Numero_in_List_Page               |
      | Select_Carte_Numero_In_Cartes_List_Page |

  #================================================================================================================================
  # Scenario_Name - TS_15_TC_16_Creation of Code Conducteur with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  #@Smoke
  #Scenario Outline: TS_15_TC_16_Creation of Code Conducteur with Annuler Flow
    #When user clicks on Accueil in left pane total home page should be displayed
    #Given user clicks on Cartes image in Votre Parc section
    #Then cartes list Page should be displayed
    #Given gestion des codes conducteurs tab is clicked and the relevant page is displayed with nouveau code conductuer button
    #When user clicks on nouveau code conductuer button and the relevant page is displayed with four fields namely nom_client and n_de_compte and division and nombre and two buttons namely annuler and terminer
    #And all the mandatory fields such as <nom_client_in_creation_de_code_conducteur> <n_de_compte_in_creation_de_code_conducteur> <division_in_creation_de_code_conducteur> <nombre_in_creation_de_code_conducteur> are filled and user clicks on annuler button sand gets redirected to gestion des codes conducteurs tab
#
    #Examples: 
      #| nom_client_in_creation_de_code_conducteur                                     | n_de_compte_in_creation_de_code_conducteur                                     | division_in_creation_de_code_conducteur                                     | nombre_in_creation_de_code_conducteur                                     |
      #| Enter_Nom_Client_In_Creation_De_Code_Condcuteur_In_Gestion_In_Cartes_ListPage | Enter_N_De_Compte_In_Creation_De_Code_Condcuteur_In_Gestion_In_Cartes_ListPage | Enter_Division_In_Creation_De_Code_Condcuteur_In_Gestion_In_Cartes_ListPage | Enter_Nombre_In_Creation_De_Code_Condcuteur_In_Gestion_In_Cartes_ListPage |

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
  # Scenario_Name - TS_18_TC_19_Navigation to Badge List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_18_TC_19_Navigation to Badge List Page
    #When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on Badge image in Votre Parc section
    Then Badges List Page should be displayed and should list all badges when we remove Statut : Actif
    When Badge numero is entered in rechercher un badge as <badge_Numero_in_Rechercher_un_badge>
    Then searched badge numero row should be filtered and shown in the badges list page as <badge_Numero_in_Rechercher_un_badge>

    Examples: 
      | badge_Numero_in_Rechercher_un_badge           |
      | Badge_Numero_To_Search_In_Rechercher_Un_Badge |

  #================================================================================================================================
  # Scenario_Name - TS_19_TC_20_Navigation to Badges Detailed Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_19_TC_20_Navigation to Badges Detailed Page
    When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on Badge image in Votre Parc section
    Then Badges List Page should be displayed and should list all badges when we remove Statut : Actif
    When badge numero as <badge_Numero_in_List_Page> is clicked in Badges List Page
    Then Badges Detailed Page should be displayed with selected <badge_Numero_in_List_Page> and other tabs

    Examples: 
      | badge_Numero_in_List_Page               |
      | Select_Badge_Numero_In_Badges_List_Page |

  #================================================================================================================================
  # Scenario_Name - TS_04_TC_04_Search Cartes from Common Rechercher at header of application
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_04_TC_04_Search Cartes from Common Rechercher at header of application
    Given user select cartes option from Rechercher dropdown in the application header
    Then cartes image should be displayed in Rechercher dropdown
    When valid <cartes_numero_in_Rechercher_in_header> is entered in Rechercher and system shows entered cartes numero with Voir tous les resultats link
    And user clicks on resulted <cartes_numero_in_Rechercher_in_header> and system should navigate to relevant cartes detailed page

    #And close the browser
    Examples: 
      | cartes_numero_in_Rechercher_in_header       |
      | Enter_Cartes_Numero_In_Rechercher_In_Header |

  #================================================================================================================================
  # Scenario_Name - TS_17_TC_18_Verification of Creation De Support page display for Carte
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_17_TC_18_Verification of Creation De Support page display for Carte
    When user clicks on Accueil in left pane total home page should be displayed
    And user clicks on nouvelle carte link in accueil page
    Then creation de support page should be displayed with relevant fields

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
  # Scenario_Name - TS_20_TC_21_Verification of Creation De Support page display for Badge
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_20_TC_21_Verification of Creation De Support page display for Badge
    And user clicks on nouveau badge link in accueil page
    Then creation de support page should be displayed with relevant fields

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
