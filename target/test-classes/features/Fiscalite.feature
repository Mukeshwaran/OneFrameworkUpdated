#================================================================================================================================
#	@Feature_Name - Total_Fleet_Fiscalite
#	@Feature_Description - Scenarios related to Fiscalite page is covered in this feature file
# @AuthorID_AuthorName - 593611_Mukesh
#	@Date - Oct 29,2019
#	@Scenarios_Covered as follows:
#-------> TS_01_TC_01_Login_With_Valid_Credentials_Vos_Alertes
#-------> TS_30_TC_31_verify all the five tabs are loading properly in the fiscalite portlet
#-------> TS_30_TC_31_validation for ticpe and export
#-------> TS_27_TC_32_verify the filtres in all five tabs are working properly in the fiscalite portlet
#-------> close browser
#================================================================================================================================
@Total_Fleet_Fiscalite
Feature: Total_Fleet_Fiscalite

  Background: 
    Given A workbook named "Fiscalite" and sheet named "Fiscalite_Data" is read

  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_30_TC_31_verify all the five tabs are loading properly in the fiscalite portlet
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario: TS_30_TC_31_verify all the five tabs are loading properly in the fiscalite portlet
    Given user clicks on Accepter in page footer to accept cookies
    When user clicks fiscalite in left pane
    Then user will be navigated to fiscalite list page
    And fiscalite page should contains all five tabs namely tvs_tab and avantages_en_nature_tab and tva_tab and and_tab and ticpe_tab with all appropriate informations

  #================================================================================================================================
  #Scenario_Name: TS_30_TC_31_validation for ticpe and export
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_30_TC_31_validation for ticpe and export
    When user clicks fiscalite in left pane
    And export button is clicked with excel path <excel_path_prior_downloading> and <excel_downloadedpath_fiscalite_tvs_tab> and <excel_tobecopiedin_fiscalite_tvs_tab> and <excel_path_post_downloading>
    And read the excel as <excel_tobecopiedin_fiscalite_tvs_tab> and check if excel data is matching with application

    #Then excel should be downloaded with the all content available in the list page
    Examples: 
      | excel_path_prior_downloading           | excel_downloadedpath_fiscalite_tvs_tab    | excel_tobecopiedin_fiscalite_tvs_tab    | excel_path_post_downloading           |
      | Excel_Path_Prior_Downloading_Fiscalite | Excel_DownloadedPath_In_fiscalite_tvs_tab | Excel_ToBeCopiedIn_In_fiscalite_tvs_tab | Excel_Path_Post_Downloading_Fiscalite |

  #=============================================================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #=============================================================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser

  #=======================================================================================================================================================
  # Scenario_Name - Login application
  #=======================================================================================================================================================
  @Smoke
  Scenario Outline: TS_01_TC_01_Login_With_Valid_Credentials
    Given user launches browser and opens total fleet application url
    When user inputs <email> and <mot_de_passe> and clicks on Se_Connecter button
    Then user should be able to view total fleet home page with total fleet logo

    Examples: 
      | email | mot_de_passe |
      | Email | Mot_de_passe |

  #================================================================================================================================
  #Scenario_Name: TS_27_TC_32_verify the filtres in all five tabs are working properly in the fiscalite portlet
  #@AuthorID_AuthorName - 593611_Mukesh
  #================================================================================================================================
  @Smoke
  Scenario Outline: TS_27_TC_32_verify the filtres in all five tabs are working properly in the fiscalite portlet
    Given user clicks on Accepter in page footer to accept cookies
    When user clicks fiscalite in left pane
    Then user will be navigated to fiscalite list page
    When applying the filter in all the five tabs then values in the tabs should be displayed accordingly <enteryearinexercicefiscalDropdownTVSTab> <select_year_In_du_periode_in_avantagesEnNatureTab> <select_month_In_Du_Periode_In_AvantagesEnNatureTab> <select_year_In_au_periode_in_avantagesEnNatureTab> <select_month_In_au_Periode_In_AvantagesEnNatureTab> <selectmonthinDuperiodefilterTvaTab> <selectyearinDuperiodefilterTvaTab> <selectdateinDuperiodefilterTvaTab> <selectmonthinAuperiodefilterTvaTab> <selectyearinAuperiodefilterTvaTab> <selectdateinAuperiodefilterTvaTab> <selectmonthinDuDatedentreeauparfilterAndTab> <selectyearinDuDatedentreeauparfilterAndTab> <selectdateinDuDateDuInDatedentreeauparfilterAndTab> <selectmonthinAuDatedentreeauparfilterAndTab> <selectyearinAuDatedentreeauparfilterAndTab> <selectdateinAuDatedentreeauparfilterAndTab>

    Examples: 
      | enteryearinexercicefiscalDropdownTVSTab | select_year_In_du_periode_in_avantagesEnNatureTab | select_month_In_Du_Periode_In_AvantagesEnNatureTab | select_year_In_au_periode_in_avantagesEnNatureTab | select_month_In_au_Periode_In_AvantagesEnNatureTab | selectmonthinDuperiodefilterTvaTab | selectyearinDuperiodefilterTvaTab | selectdateinDuperiodefilterTvaTab | selectmonthinAuperiodefilterTvaTab | selectyearinAuperiodefilterTvaTab | selectdateinAuperiodefilterTvaTab | selectmonthinDuDatedentreeauparfilterAndTab | selectyearinDuDatedentreeauparfilterAndTab | selectdateinDuDateDuInDatedentreeauparfilterAndTab | selectmonthinAuDatedentreeauparfilterAndTab | selectyearinAuDatedentreeauparfilterAndTab | selectdateinAuDatedentreeauparfilterAndTab |
      | EnterYearInExerciceFiscalDropdownTVSTab | Select_Year_In_Du_Periode_In_AvantagesEnNatureTab | Select_Month_In_Du_Periode_In_AvantagesEnNatureTab | Select_Year_In_Au_Periode_In_AvantagesEnNatureTab | Select_Month_In_Au_Periode_In_AvantagesEnNatureTab | SelectMonthDuInPeriodeFilterTvaTab | SelectYearIDunPeriodeFilterTvaTab | SelectDateDuInPeriodeFilterTvaTab | SelectMonthInAuPeriodeFilterTvaTab | SelectYearInAuPeriodeFilterTvaTab | SelectDateInAuPeriodeFilterTvaTab | SelectMonthDuInDatedentreeauparFilterAndTab | SelectYearIDunDatedentreeauparFilterAndTab | SelectDateIDunDatedentreeauparFilterAndTab         | SelectMonthInAuDatedentreeauparFilterAndTab | SelectYearInAuDatedentreeauparFilterAndTab | SelectDateInAuDatedentreeauparFilterAndTab |

  #=============================================================================================================================================================================
  # Scenario_Name - close browser
  # @AuthorID_AuthorName - 165450_Chamu
  #=============================================================================================================================================================================
  @Smoke
  Scenario: close browser
    And close the browser
