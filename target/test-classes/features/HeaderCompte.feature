#================================================================================================================================
#	@Feature_Name - Total_Fleet_HeaderCompte
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 21,2019
#	@Feature_Description - Scenarios related to Factures page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials_Utilisateurs
#-------> TS_31_TC_41_New Secondary User Creation with Annuler Flow
#-------> TS_31_TC_42_Update Existing Secondary User with Annuler Flow
#-------> TS_30_TC_40_Update Personal Mail ID with Annuler Flow
#-------> close browser
#================================================================================================================================
@Total_Fleet_HeaderCompte
Feature: Total_Fleet_HeaderCompte

  #================================================================================================================================
  Background: 
    Given A workbook named "HeaderCompte" and sheet named "HeaderCompte_Data" is read

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Valid_Credentials
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials_Utilisateurs
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  # Scenario_Name - TS_31_TC_41_New Secondary User Creation with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_31_TC_41_New Secondary User Creation with Annuler Flow
    When user clicks on user name in header and clicks on utilisateurs link
    Then utilisateurs list page should be displayed with creer_un_nouvel_utilisateur button as well as affichage button as well as download icon with a sorting table
    And click on creer un nouvel utilisateur button
    Then nouvel utilisateur page is shown and user enters mandatory fields such as <nom_in_nouvel_utilisateur> <prenom_in_nouvel_utilisateur> <email_in_nouvel_utilisateur> <telephone_in_nouvel_utilisateur> and clicks on annuler button

    Examples: 
      | nom_in_nouvel_utilisateur      | prenom_in_nouvel_utilisateur      | email_in_nouvel_utilisateur      | telephone_in_nouvel_utilisateur      |
      | Nom_In_Nouvel_Utilisateur_Page | Prenom_In_Nouvel_Utilisateur_Page | Email_In_Nouvel_Utilisateur_Page | Telephone_In_Nouvel_Utilisateur_Page |

  #================================================================================================================================
  # Scenario_Name - TS_31_TC_42_Update Existing Secondary User with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_31_TC_42_Update Existing Secondary User with Annuler Flow
    When user is in utilisateurs list page and click on edit icon against a user with <adresse_email_in_utilisateur_userpage>
    Then utilisateurs page of relevant user should be displayed and user updates <nom_in_utilisateur_userpage> <prenom_in_utilisateur_userpage> <email_in_utilisateur_userpage> <telephone_in_utilisateur_userpage> and clicks on annuler button
    Then list de utilisateurs page should be displayed

    Examples: 
      | adresse_email_in_utilisateur_userpage      | nom_in_utilisateur_userpage         | prenom_in_utilisateur_userpage         | email_in_utilisateur_userpage         | telephone_in_utilisateur_userpage         |
      | Adresse_Email_In_List_Des_Utilisateur_Page | Nom_In_Utilisateur_Userpage_To_Edit | Prenom_In_Utilisateur_Userpage_To_Edit | Email_In_Utilisateur_Userpage_To_Edit | Telephone_In_Utilisateur_Userpage_To_Edit |

  #================================================================================================================================
  # Scenario_Name - TS_30_TC_40_Update Personal Mail ID with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_30_TC_40_Update Personal Mail ID with Annuler Flow
    When user clicks on user name in header and clicks on informations personnelles link
    Then mes informations personnelles page should be displayed with modifier mes information personnelles button with relevant donnees personnnelles fields as <identifiant_in_mes_information_personnelles> <nom_in_mes_information_personnelles> <prenom_in_mes_information_personnelles> <email_in_mes_information_personnelles> <statut_in_mes_information_personnelles> <telephone_in_mes_information_personnelles> <mobile_in_mes_information_personnelles> <periodedevalidite_in_mes_information_personnelles> <langue_in_mes_information_personnelles> <profilgestiondeflotte_in_mes_information_personnelles>
    And click on modifier mes information personnelles button
    Then modifier mes informations personnelles page should be displayed and user modifies <email_in_modifier_mes_information_personnelles> and clicks on annuler button

    Examples: 
      | email_in_modifier_mes_information_personnelles | identifiant_in_mes_information_personnelles | nom_in_mes_information_personnelles | prenom_in_mes_information_personnelles | email_in_mes_information_personnelles | statut_in_mes_information_personnelles | telephone_in_mes_information_personnelles | mobile_in_mes_information_personnelles | periodedevalidite_in_mes_information_personnelles | langue_in_mes_information_personnelles | profilgestiondeflotte_in_mes_information_personnelles |
      | Email_In_Modifier_Mes_Information_Personnelles | Identifiant_In_Mes_Information_Personnelles | Nom_In_Mes_Information_Personnelles | Prenom_In_Mes_Information_Personnelles | Email_In_Mes_Information_Personnelles | Statut_In_Mes_Information_Personnelles | Telephone_In_Mes_Information_Personnelles | Mobile_In_Mes_Information_Personnelles | Periodedevalidite_In_Mes_Information_Personnelles | Langue_In_Mes_Information_Personnelles | ProfilGestionDeFlotte_In_Mes_Information_Personnelles |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
