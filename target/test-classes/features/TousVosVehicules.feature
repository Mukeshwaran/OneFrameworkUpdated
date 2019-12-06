#================================================================================================================================
#	@Feature_Name - Total_Fleet_TousVosVehicules
# @AuthorID_AuthorName - 593611_Mukesh
#	@Date - Oct 10,2019
#	@Feature_Description - Scenarios related to Tous Vos Vehicules page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_10_TC_11_Upload file for existing vehicule
#-------> TS_04_TC_05_Search the vehicules from Rechercher at the top of application
#-------> TS_07_TC_08_Navigate to the vehicule list page from the counts portlet and search for a vehicule in the list
#-------> TS_08_TC_09_verify if the User is able to create vehicule with AAA call
#-------> TS_33_TC_44_verify if the User is able to create Unregistered vehicule
#-------> TS_09_TC_10_Create a contrat for the vehicule from the detailed page
#-------> TS_09_TC_10_Validation for contrat tab
#-------> TS_11_TC_12_Navigation to Vehicules Detailed Page
#-------> TS_37_TC_48_To assign a vehicle for contributor with AEN set up
#-------> close browser
#================================================================================================================================
@Total_Fleet_TousVosVehicules
Feature: Total_Fleet_TousVosVehicules

  Background: 
    Given A workbook named "TousVosVehicules" and sheet named "TousVosVehicules_Data" is read

  #================================================================================================================================
  #Scenario_Name: TS_01_TC_01_Login_With_Valid_Credentials
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button

    #Then user should be able to view total fleet home page with total fleet logo
    Examples: 
      | email | motdepasse |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_10_TC_11_Upload file for existing vehicule
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_10_TC_11_Upload file for existing vehicule
    When user clicks on vehicules in voter parc section
    Then user should be navigated to vehicule list page
    When <immatriculationinvehiculelistpage> is set by user
    Then search results should display the appropriate vehicule <immatriculationinvehiculelistpage> in the list
    When vehiculeid <immatriculationinvehiculelistpage> is clicked
    Then user will be navigated to vehicule detailed page
    And user uploads the file in Piecesandjoints tab <filenameandpathForattachment>
    Then file will be uploaded successfully
    When user clicks delete button in the uploaded file
    When user clicks supprimer
    Then Attached file will be deleted from pieces and joints Tab

    Examples: 
      | immatriculationinvehiculelistpage       | filenameandpathForattachment |
      | SelectImmatriculationInVehiculeListpage | FileNameAndPathForAttachment |

  #================================================================================================================================
  #Scenario_Name: TS_04_TC_05_Search the vehicules from Rechercher at the top of application
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_04_TC_05_Search the vehicules from Rechercher at the top of application
    When user select the vehicule option from Rechercher drop down
    Then vehicule image should be displayed in the Rechercher drop down
    When user enter the valid <immatriculationinvehiculelistpage> Number
    Then entered <immatriculationinvehiculelistpage> should be displayed with the Voir tous les résultats link

    Examples: 
      | immatriculationinvehiculelistpage |
      | EnterImmatriculationinRechercher  |

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
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button

    #Then user should be able to view total fleet home page with total fleet logo
    Examples: 
      | email | motdepasse |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_07_TC_08_Navigate to the vehicule list page from the counts portlet and search for a vehicule in the list
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_07_TC_08_Navigate to the vehicule list page from the counts portlet and search for a vehicule in the list
    # When user clicks on Accueil in left pane total home page should be displayed
    When user clicks on vehicules in voter parc section
    Then user should be navigated to vehicule list page
    When <ImmatriculationInVehiculeLispage> is set by user
    Then search results should display the appropriate vehicule <ImmatriculationInVehiculeLispage> in the list

    Examples: 
      | ImmatriculationInVehiculeLispage       |
      | EnterImmatriculationinvehiculelistpage |

  #================================================================================================================================
  #Scenario_Name: TS_08_TC_09_verify if the User is able to create vehicule with AAA call
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_08_TC_09_verify if the User is able to create vehicule with AAA call
    When user clicks on Accueil in left pane total home page should be displayed
    When user clicks nouveau vehicule button in_the_votreParc
    Then user should be navigated to nouveau vehicule creation page
    When enters AAA <EnterimmatriculationinVehiculeCreationPage> id in vehicule creation page
    When user clicks annuler button in nouveau vehicule page
    Then user should be redirected to vehicule list page

    Examples: 
      | EnterimmatriculationinVehiculeCreationPage |
      | ImmatriculationInNouveauVehiculePage       |

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
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button

    #Then user should be able to view total fleet home page with total fleet logo
    Examples: 
      | email | motdepasse |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_33_TC_44_verify if the User is able to create Unregistered vehicule
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_33_TC_44_verify if the User is able to create Unregistered vehicule
    When user clicks nouveau vehicule button in_the_votreParc
    Then user should be navigated to nouveau vehicule creation page
    When user clicks  Vehicule_non_immatricule checkbox then respective fields should be displayed in the page
    When user clicks annuler button in nouveau vehicule page
    Then user should be redirected to vehicule list page

  #================================================================================================================================
  #Scenario_Name: TS_09_TC_10_Create a contrat for the vehicule from the detailed page
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_09_TC_10_Create a contrat for the vehicule from the detailed page
    When user clicks on Accueil in left pane total home page should be displayed
    When user clicks on vehicules in voter parc section
    Then user should be navigated to vehicule list page
    When <immatriculationinvehiculelistpage> is set by user
    Then search results should display the appropriate vehicule <immatriculationinvehiculelistpage> in the list
    When <immatriculationinvehiculelistpage> is clicked in vehicule list page
    Then user will be navigated to vehicule detailed page then verify <immatriculationinvehiculelistpage> is displayed
    When user clicks contrat tab
    And user clicks on Creer le contrat link
    Then user Should be navigated to modifier un contrat vehicule page

    Examples: 
      | immatriculationinvehiculelistpage       |
      | SelectImmatriculationInVehiculeListpage |
  #================================================================================================================================
  #Scenario_Name: TS_09_TC_10_Validation for contrat tab
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
 
  @Smoke
  Scenario Outline: TS_09_TC_10_Validation for contrat tab
    And user should verify the fields in contrat tab for all the types <Locationcourteduree> <Locationmoyenneduree> <Locationlongueduree> <Locationavecoptiondachat> <IndemniteKilometrique> and <Achat>
    When user clicks annuler button in Vehicules Contrat Page
    Then user should be redirected to vehicule detailed page

    Examples: 
      | Locationcourteduree | Locationmoyenneduree | Locationlongueduree | Locationavecoptiondachat | IndemniteKilometrique | Achat            |
      | ContrattypeLCD      | ContrattypeLMD       | ContrattypeLLD      | ContrattypeLOA           | ContrattypeIK         | ContrattypeAchat |

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
    When user inputs <email> and <motdepasse> and clicks on Se_Connecter button

    #Then user should be able to view total fleet home page with total fleet logo
    Examples: 
      | email | motdepasse |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_11_TC_12_Navigation to Vehicules Detailed Page
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_11_TC_12_Navigation to Vehicules Detailed Page
    And user clicks on vehicules in voter parc section
    When <immatriculationinvehiculelistpage> is set by user
    Then search results should display the appropriate vehicule <immatriculationinvehiculelistpage> in the list
    When <immatriculationinvehiculelistpage> is clicked in vehicule list page
    Then user will be navigated to vehicule detailed page then verify <immatriculationinvehiculelistpage> is displayed
    Then all the tabs should be loaded properly in the page

    Examples: 
      | immatriculationinvehiculelistpage                |
      | EnterImmatriculationinRechercherVehiculeListPage |

  #================================================================================================================================
  #Scenario_Name: TS_37_TC_48_To select un vehicule existant tab in contributor detailed page for aen setup
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_37_TC_48_To select un vehicule existant tab in contributor detailed page for aen setup
    When user clicks on Accueil in left pane total home page should be displayed
    Given user clicks on Collaborateur image in Votre Parc section
    Then Collaborateurs List Page should be displayed
    When collaborateur name <collaborateurNominlistpage> is entered in rechercher une collaborateur and the resulted row is clicked
    Then Collaborateur Detailed Page should be displayed
    When user clicks on affecter un vehicule button
    Then popup should be displayed with two tabs namely selectionner un vehicule existant and enregistrer un nouveau vehicule
    When user select selectionner un vehicule existant tab

    Examples: 
      | collaborateurNominlistpage           |
      | SelectCollaborateurNomInCollListPage |

  #================================================================================================================================
  #Scenario_Name: TS_37_TC_48_To assign a vehicle for contributor with AEN set up
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_37_TC_48_To assign a vehicle for contributor with AEN set up
    When user should click suivant button by entering all the mandate fields such as<vehiculeIDinSelectionnerunvehiculeexistantpopup> <selectdateInDateDEffet> <selectMonthInDateDEffet> <selectYearInDateDEffet> <hhDateEtHeureDeffetVehiculeAssignment> <mmDateEtHeureDeffetVehiculeAssignment>in selectionner un vehicule existant tab
    Then user should navigate to avantages en nature page
    Then all appropriate fields should be displayed based on the contrat types <Locationcourteduree> <Locationmoyenneduree> <Locationlongueduree> <Locationavecoptiondachat> <IndemniteKilometrique> and <Achat>
    When user clicks precedent button
    Then user should redirect to collaborateur detailed page

    Examples: 
      | vehiculeIDinSelectionnerunvehiculeexistantpopup      | selectdateInDateDEffet                            | selectMonthInDateDEffet                            | selectYearInDateDEffet                            | hhDateEtHeureDeffetVehiculeAssignment      | mmDateEtHeureDeffetVehiculeAssignment      |  | Locationcourteduree | Locationmoyenneduree | Locationlongueduree | Locationavecoptiondachat | IndemniteKilometrique | Achat            |
      | EntervehiculeIDinSelectionnerunvehiculeexistantpopup | SelectDateInDateDEffetInCollaborateurDetailedPage | SelectMonthInDateDEffetInCollaborateurDetailedPage | SelectYearInDateDEffetInCollaborateurDetailedPage | enterhhDateEtHeureDeffetVehiculeAssignment | entermmDateEtHeureDeffetVehiculeAssignment |  | ContrattypeLCD      | ContrattypeLMD       | ContrattypeLLD      | ContrattypeLOA           | ContrattypeIK         | ContrattypeAchat |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
