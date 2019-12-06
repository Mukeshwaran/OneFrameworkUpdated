#================================================================================================================================
#	@Feature_Name - Total_Fleet_Factures
# @AuthorID_AuthorName - 165450_Chamu
#	@Date - Oct 17,2019
#	@Feature_Description - Scenarios related to Factures page is covered in this feature file
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials
#-------> TS_23_TC_24_Navigation to Factures List Page
#-------> TS_38_TC_49_Manual Invoice Creation with Annuler Flow
#-------> TS_01_TC_01_Login_With_Valid_Credentials_Factures
#-------> TS_24_TC_25_Verification of excel file download from Suivi D Integration Des Factures
#-------> close browser
#================================================================================================================================
@Total_Fleet_Factures
Feature: Total_Fleet_Factures

  #================================================================================================================================
  Background: 
    Given A workbook named "Factures" and sheet named "Factures_Data" is read

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
  # Scenario_Name - TS_23_TC_24_Navigation to Factures List Page
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: TS_23_TC_24_Navigation to Factures List Page
    When user clicks on factures in left menu
    Then factures list page should be displayed
    And three tabs named factures total and fichiers de facturation total and factures autres fournisseurs are displayed

  #================================================================================================================================
  # Scenario_Name - TS_38_TC_49_Manual Invoice Creation with Annuler Flow
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_38_TC_49_Manual Invoice Creation with Annuler Flow
    When user clicks on factures autres fournisserus tab and click nouvelle facture button
    Then ajouter une facture page should be displayed and user enters <type_de_fournisseur_in_ajouter_une_facture> <numero_de_facture_in_ajouter_une_facture> <montant_ht_in_ajouter_une_facture> <montant_tva_in_ajouter_une_facture> <montant_ttc_in_ajouter_une_facture>
    And clicks on annuler to navigate back to factures list page

    Examples: 
      | type_de_fournisseur_in_ajouter_une_facture | numero_de_facture_in_ajouter_une_facture | montant_ht_in_ajouter_une_facture | montant_tva_in_ajouter_une_facture | montant_ttc_in_ajouter_une_facture |
      | Type_De_Fournisseur_In_Ajouter_Une_Facture | Numero_De_Facture_In_Ajouter_Une_Facture | Montant_HT_In_Ajouter_Une_Facture | Montant_TVA_In_Ajouter_Une_Facture | Montant_TTC_In_Ajouter_Une_Facture |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser

  #================================================================================================================================
  # Scenario_Name - TS_01_TC_01_Login_With_Valid_Credentials_Factures
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials_Factures
    #Given set download path in chrome directory
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  # Scenario_Name - TS_24_TC_25_Verification of excel file download from Suivi D Integration Des Factures
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_24_TC_25_Verification of excel file download from Suivi D Integration Des Factures
    When user clicks on factures in left menu
    Then factures list page should be displayed
    When factures autres fournisserus tab is clicked and again on clicking suivi d integration des factures
    Then suivi d integration des factures page should be displayed with two buttons namely actualiser les statuts and retour a la liste des factures at the top right corner with filter button and affichage option and a sorting table
    When user clicks on excel icon against a <nom_du_fichier_in_suivi_D_Int_Des_Factures_Page> and downloads by providing relevant downloded path <excel_path_prior_downloading> <excel_downloadedpath_suivi_d_int_des_factues> <excel_tobecopiedin_suivi_d_int_des_factues> <excel_path_post_downloading>
    And read the excel as <excel_tobecopiedin_suivi_d_int_des_factues> and check if excel contains <header_title_in_fichierexcel_in_suivi_D_Int_Des_Factures_Page>

    Examples: 
      | nom_du_fichier_in_suivi_D_Int_Des_Factures_Page | excel_downloadedpath_suivi_d_int_des_factues | excel_tobecopiedin_suivi_d_int_des_factues | excel_path_prior_downloading | excel_path_post_downloading | header_title_in_fichierexcel_in_suivi_D_Int_Des_Factures_Page |
      | Nom_Du_Fichier_In_Suivi_D_Int_Des_Factures_Page | Excel_DownloadedPath_Suivi_D_Int_Des_Factues | Excel_ToBeCopiedIn_Suivi_D_Int_Des_Factues | Excel_Path_Prior_Downloading | Excel_Path_Post_Downloading | Header_Title_In_FichierExcel_In_Suivi_D_Int_Des_Factures_Page |

  #================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
