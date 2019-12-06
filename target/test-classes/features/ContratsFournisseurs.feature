#================================================================================================================================
#	@Feature_Name - Total_Fleet_ContratsFournisseurs
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 17,2019
#	@Feature_Description - Scenarios related to ContratsFournisseurs page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_21_TS_22_TC_22_TC_23_Navigation to Contrats Fournisseurs List Page as well as Detailed Page
#-------> close browser
#================================================================================================================================
@Total_Fleet_ContratsFournisseurs
Feature: Total_Fleet_ContratsFournisseurs

  #================================================================================================================================
  Background: 
    Given A workbook named "ContratsFournisseurs" and sheet named "ContratsFournisseurs_Data" is read

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
  # Scenario_Name - TS_21_TS_22_TC_22_TC_23_Navigation to Contrats Fournisseurs List Page as well as Detailed Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_21_TS_22_TC_22_TC_23_Navigation to Contrats Fournisseurs List Page as well as Detailed Page
    When user clicks on contrats fournisseurs in left pane
    Then contrats fournisseurs list page should be displayed
    When fournisseur as <fournisseur_in_List_Page> is clicked in fournisseur list Page
    Then fournisseur detailed page should be displayed with selected <fournisseur_in_List_Page>

    #And close the browser
    Examples: 
      | fournisseur_in_List_Page                    |
      | Select_Fournisseur_In_Fournisseur_List_Page |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
