package org.cts.oneframework.cucumber.pageobjectmanager;

import org.cts.oneframework.cucumber.pages.AccueilPage;
import org.cts.oneframework.cucumber.pages.AvisDAmendesPage;
import org.cts.oneframework.cucumber.pages.CampagnesPage;
import org.cts.oneframework.cucumber.pages.CartesAndBadgesPage;
import org.cts.oneframework.cucumber.pages.CollaborateursPage;
import org.cts.oneframework.cucumber.pages.CommonPage;
import org.cts.oneframework.cucumber.pages.ContratsFournisseursPage;
import org.cts.oneframework.cucumber.pages.FacturesPage;
import org.cts.oneframework.cucumber.pages.FiscalitePage;
import org.cts.oneframework.cucumber.pages.HeaderComptePage;
import org.cts.oneframework.cucumber.pages.RapportsPage;
import org.cts.oneframework.cucumber.pages.SuiviDesCoutsPage;
import org.cts.oneframework.cucumber.pages.TousVosVehiculesPage;
import org.cts.oneframework.cucumber.pages.VosAlertesPage;
import org.openqa.selenium.WebDriver;

public class PageObjectManager{

	private WebDriver driver;
	private AccueilPage accueilPage;
	private CollaborateursPage collaborateursPage;
	private CommonPage commonPage;
	private CartesAndBadgesPage cardsAndBadgesPage;
	private ContratsFournisseursPage contratsFournisseursPage;
	private CampagnesPage campagnesPage;
	private FacturesPage facturesPage;
	private HeaderComptePage headerComptePage;
	private VosAlertesPage vosAlertesPage;
	private AvisDAmendesPage avisDAmendesPage;
	private TousVosVehiculesPage tousVosVehiculesPage;
	private SuiviDesCoutsPage suiviDesCoutsPage;
	private FiscalitePage fiscalitePage;
	private RapportsPage rapportsPage;
	public PageObjectManager(WebDriver driver) {
		this.driver = driver;
	}

	public AccueilPage getAccueilPage(){
		return (accueilPage==null) ? accueilPage = new AccueilPage(driver) : accueilPage;
	}
	
	public CollaborateursPage getCollaborateursPage(){
		return (collaborateursPage==null) ? collaborateursPage = new CollaborateursPage(driver) : collaborateursPage;
	}
	
	public CommonPage getCommonPage(){
		return (commonPage==null) ? commonPage = new CommonPage(driver) : commonPage;
	}
	
	public CartesAndBadgesPage getCardsAndBadgesPage(){
		return (cardsAndBadgesPage==null) ? cardsAndBadgesPage = new CartesAndBadgesPage(driver) : cardsAndBadgesPage;
	}
	
	public ContratsFournisseursPage getContratsFournisseursPage(){
		return (contratsFournisseursPage==null) ? contratsFournisseursPage = new ContratsFournisseursPage(driver) : contratsFournisseursPage;
	}
	
	public CampagnesPage getCampagnesPage(){
		return (campagnesPage==null) ? campagnesPage = new CampagnesPage(driver) : campagnesPage;
	}
	
	public FacturesPage getFacturesPage(){
		return (facturesPage==null) ? facturesPage = new FacturesPage(driver) : facturesPage;
	}
	
	public HeaderComptePage getHeaderComptePage(){
		return (headerComptePage==null) ? headerComptePage = new HeaderComptePage(driver) : headerComptePage;
	}
	
	public VosAlertesPage getVosAlertesPage(){
		return (vosAlertesPage==null) ? vosAlertesPage = new VosAlertesPage(driver) : vosAlertesPage;
	}
	
	public AvisDAmendesPage getAvisDAmendesPage() {
		return (avisDAmendesPage == null) ? avisDAmendesPage = new AvisDAmendesPage(driver) : avisDAmendesPage;
	}
	public TousVosVehiculesPage getTousVosVehiculesPage() {
		return (tousVosVehiculesPage == null) ? tousVosVehiculesPage = new TousVosVehiculesPage(driver) : tousVosVehiculesPage;
	}
	public SuiviDesCoutsPage getSuiviDesCoutsPage() {
		return (suiviDesCoutsPage == null) ? suiviDesCoutsPage = new SuiviDesCoutsPage(driver) : suiviDesCoutsPage;
	}
	
	  public FiscalitePage getFiscalitePage() {
			return (fiscalitePage == null) ? fiscalitePage = new FiscalitePage(driver) : fiscalitePage;
		}
	  
	  public RapportsPage getRapportsPage() {
			return (rapportsPage == null) ? rapportsPage = new RapportsPage(driver) : rapportsPage;
		}
}