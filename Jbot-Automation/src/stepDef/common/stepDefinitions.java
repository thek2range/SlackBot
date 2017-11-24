package stepDef.common;

import org.openqa.selenium.By;

import cucumber.api.Scenario;
import cucumber.api.java.After;
import cucumber.api.java.Before;
import cucumber.api.java.en.Given;
import util.sharedData;

public class stepDefinitions {
	
	@Before 
	public void setUp(Scenario scenario)
	{ 
		System.out.println("====Executing Scenario===="+scenario.getName());
	    sharedData.thisScenario = scenario;
	} 
	@After 
	public void tearDown(Scenario scenario)
	{ 
		/*try {
			sharedData.appInstance.findElement(By.xpath("(//SPAN[@class='caret'])[1]")).click();
			Thread.sleep(1000);
			sharedData.appInstance.findElement(By.xpath("//A[@href='javascript:;'][text()='Logout']")).click();
			Thread.sleep(5000);
			
		} catch (Exception e) {
			// TODO: handle exception
		}
	*/	//sharedData.appInstance.close();
		//sharedData.appInstance.quit();
	
	} 

	@Given("^The user Opened the AUT\\.$")
	public void the_user_Opened_to_AUT() throws Throwable {		
	    sharedData.appInstance = util.general.driver.getAUT();	    
	    util.general.tools.captureScreenshot ();
	}
}
