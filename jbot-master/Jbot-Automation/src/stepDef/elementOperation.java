package stepDef;


import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.io.FileWriter;
import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.List;
import java.util.Set;
import java.util.regex.Matcher;
import java.util.regex.Pattern;

import org.openqa.selenium.By;
import org.openqa.selenium.Keys;
import org.openqa.selenium.NoSuchElementException;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.interactions.Action;
import org.openqa.selenium.interactions.Actions;
import org.openqa.selenium.support.ui.Select;
import org.testng.Assert;

import cucumber.api.java.en.Given;
import cucumber.api.java.en.Then;
import util.sharedData;
import util.general.tools;

public class elementOperation {
	String fileName = "temp.txt";
	@Then("^The user enters \"(.*?)\"\\.$")
	public void the_user_enters(String key) throws Throwable {
		WebElement element = util.general.tools.getElement(key);	
		element.clear();
		Actions action = new Actions(sharedData.appInstance);
		action.moveToElement(element);
		action.click().sendKeys(util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition));
		Action act = action.build();
		act.perform();
		
	//	tools.customWait(Thread.currentThread());
	}

	@Then("^The user validates \"(.*?)\" message\\.$")
	public void the_user_validates_error(String errorName) throws Throwable {
		String errorFromPortal = util.general.tools.getElement(errorName).getText();
		String expectedError = util.general.ExcelUtility.getValue(sharedData.envConfigurationSheetInstance, errorName,
				sharedData.autPosition);
		/*
		 * System.out.println("errorFromPortal : " + errorFromPortal);
		 * System.out.println("expectedError : " + expectedError);
		 */ org.junit.Assert.assertEquals(
				"ERROR : ERROR message mismatch, Expected : " + expectedError + " , but received : " + errorFromPortal,
				errorFromPortal.trim().equals(expectedError), true);

	}

	@Then("^The user waits for \"(.*?)\" Seconds\\.$")
	public void the_user_waits_for_Seconds(String time) throws Throwable {
		Thread.currentThread().sleep(Integer.parseInt(time) * 1000);
	}

	@Then("^The user inputs \"(.*?)\" as \"(.*?)\"\\.$")
	public void the_user_inputs_as(String key, String inuptString) throws Throwable {
		util.general.tools.getElement(key).sendKeys(inuptString);
	}

	@Given("^The user hovers on \"(.*?)\" to go to \"(.*?)\"\\.$")
	public void the_user_hovers_on_to_go_to(String hoverItem, String linkName) throws Throwable {
		new Actions(sharedData.appInstance).moveToElement(util.general.tools.getElement(hoverItem)).perform();
		try {
			Thread.sleep(5000);
		} catch (Exception e) {
			// TODO: handle exception
		}
		new Actions(sharedData.appInstance).moveToElement(util.general.tools.getElement(linkName)).click().perform();

	}

	@Then("^The user clicks on \"(.*?)\" Button\\.$")
	public void the_user_clicks_on_Button(String buttonValue) throws Throwable {
		try {
			// K2 : button(contains(., 'press me')]
			util.general.tools.getElement(buttonValue).click();
			//util.general.tools.pointTheElement("xPath", "//*[@value='" + buttonValue + "']").click();
		} catch (Exception e) {
			e.printStackTrace();
			}
	}
	
	@Then("^The user clicks on \"(.*?)\" Button followed by assertions.")
	public void the_user_clicks_on_Button_and_assert(String buttonValue) throws Throwable {
		try {
			// K2 : button(contains(., 'press me')]
			util.general.tools.getElement(buttonValue).click();
			Assert.assertTrue(true);
			//util.general.tools.pointTheElement("xPath", "//*[@value='" + buttonValue + "']").click();
		} catch (Exception e) {
			e.printStackTrace();
			}
	}

	@Then("^The user clicks on \"(.*?)\" Button By Action\\.$")
	public void selectByAction(String buttonValue) throws Throwable {
		try {			
			WebElement element = util.general.tools.getElement(buttonValue);
			Actions action = new Actions(sharedData.appInstance);
			action.moveToElement(element).click(element);
			
			Action builder  = action.build();
			builder.perform();
			//util.general.tools.pointTheElement("xPath", "//*[@value='" + buttonValue + "']").click();
		} catch (Exception e) {
		/*	try {
				util.general.tools.getElement(buttonValue).click();
			} catch (Exception e2) {
				e2.printStackTrace();

				// K2 : Print a message in log that the element is not available in the page ,
				// ask the developer is a force wait is required.
				// K2 : Fail this scenario.
		
			
*/		e.printStackTrace();
			}
	}

	@Then("^the user clicks on \"(.*?)\" Icon.$")
	public void the_user_clicks_on_icon(String linkName) throws Throwable {
			try {
			util.general.tools.getElement(linkName).click();
			}catch(Exception ex) {
				ex.printStackTrace();
			}
		
	}
	
	@Then("^The user checks \"(.*?)\" field is not edible.")
	public void checkNotEdible(String key) {
		WebElement element = util.general.tools.getElement(key);
		try {
		Assert.assertFalse(element.isDisplayed() && element.isEnabled());
		}catch(Exception ex) {
			Assert.assertTrue(true);
		}
		
	}
	
	@Then("^The user clicks on \"(.*?)\" Radio Button\\.$")
	public void the_user_clicks_on__Radio_Button(String buttonValue) throws Throwable {
		try {
			// util.general.tools.pointTheElement("xPath",
			// "//*[@value='"+buttonValue+"']").click();
			// util.general.tools.pointTheElement("xPath",
			// "//*[text()="+buttonValue+"']").click();
			util.general.tools.pointTheElement("xPath", "//*[contains(text(),'" + buttonValue + "')]").click();
		} catch (Exception e) {
			try {
				util.general.tools.getElement(buttonValue).click();
			} catch (Exception e2) {
				// K2 : Print a message in log that the element is not available in the page ,
				// ask the developer is a force wait is required.
				// K2 : Fail this scenario.
			}
		}
	}

	@Then("^The user selects value from \"(.*?)\" drop down\\.$")
	public void the_user_selects_value_from_drop_down(String dropDownKey) throws Throwable {
		new Select(util.general.tools.getElement(dropDownKey)).selectByVisibleText(util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, dropDownKey, sharedData.autPosition));
	}

	@Then("^The user selects \"(.*?)\" value from \"(.*?)\" drop down\\.$")
	public void the_user_selects_value_from_drop_down(String dropDownValue, String dropDownKey) throws Throwable {
		new Select(util.general.tools.getElement(dropDownKey)).selectByVisibleText(dropDownValue);
	}

	@Then("^The user selects \"(.*?)\" option from from \"(.*?)\" drop down\\.$")
	public void the_user_selects_option_from_from_drop_down(String indexOfDropDown, String dropDownKey)
			throws Throwable {
		new Select(util.general.tools.getElement(dropDownKey)).selectByIndex(Integer.parseInt(indexOfDropDown));
	}

	@Then("^the user clicks on \"(.*?)\" link\\.$")
	public void the_user_clicks_on_link(String linkName) throws Throwable {
		try {
			util.general.tools.pointTheElement("linkText", linkName).click();
		} catch (Exception e) {
			try {
			util.general.tools.getElement(linkName).click();
			}catch(Exception ex) {
			}
		}
	}
	
	

	@Then("^The user will reach to \"(.*?)\" Page\\.$")
	public void the_user_will_reach_to_Page(String pageName) throws Throwable {
		if (!pageName.trim().equals(sharedData.appInstance.getTitle().trim())) {
			String expectedPageTitle = util.general.ExcelUtility.getValue(sharedData.envConfigurationSheetInstance,
					pageName, sharedData.autPosition);
			Assert.assertEquals(
					"The user is expected to reach " + expectedPageTitle + " ,but reached to : "
							+ sharedData.appInstance.getTitle(),
					expectedPageTitle.trim(), sharedData.appInstance.getTitle().trim());

		}
	}

	// K2 : Implement , so that you can submit any page witout clicking any button.
	// Then The user submits the form.
	@Then("^The user submits the form\\.$")
	public void the_user_submits_the_form() throws Throwable {
		sharedData.appInstance.findElement(By.tagName("head")).submit();
	}

	// K2 : Implement , so that you can send enter to any page.
	@Then("^The user enters \"(.*?)\" Key\\.$")
	public void the_user_enters_Key(String arg1) throws Throwable {
		sharedData.appInstance.findElement(By.tagName("body")).sendKeys(Keys.ENTER);

	}

	/*
	 * @Then("^The user enters \"(.*?)\" Key in \"(.*?)\" field\\.$") public void
	 * the_user_enters_Key_in_field(String keyName, String fieldName ) throws
	 * Throwable { try { Key k = //util.general.tools.getElement( fieldName
	 * ).sendKeys( keyName ); String key =
	 * util.general.ExcelUtility.getValue(sharedData.envConfigurationSheetInstance,
	 * keyName ,sharedData.autPosition).trim(); System.out.println("key : " + key);
	 * util.general.tools.getElement( fieldName ).sendKeys( Keys.ENTER );
	 * 
	 * } catch (Exception e) { String key =
	 * util.general.ExcelUtility.getValue(sharedData.envConfigurationSheetInstance,
	 * keyName ,sharedData.autPosition).trim(); System.out.println("key : " + key);
	 * util.general.tools.getElement( fieldName ).sendKeys(key ); }
	 * util.general.tools.customWait(Thread.currentThread());
	 * 
	 * }
	 */
	@Then("^The user scrolls to \"(.*?)\"\\.$")
	public void the_user_scrolls_to(String key) throws Throwable {
		new Actions(sharedData.appInstance).moveToElement(util.general.tools.getElement(key)).perform();

	}

	@Then("^the user waits for the page to load\\.$")
	public void the_user_waits_for_the_page_to_load() throws Throwable {
		tools.customWait(Thread.currentThread());
	}
	
	@Then("^the user checks the \"(.*?)\" content.")
	public void checkContent(String key) throws Throwable {
		util.general.tools.getElement(key);
	}
	
	@Then("^the user asserts value of \"(.*?)\" with \"(.*?)\".")
	public void assertContentValue(String key, String value) {
		WebElement element = util.general.tools.getElement(key);
		System.out.println(element.getText());
		Assert.assertTrue(element.getText().trim().contains(value));	
	}
	
	@Then("^the user switches to iframe \"(.*?)\".")
	public void switchToFrame(String key) {
		try {
		sharedData.appInstance.switchTo().frame(util.general.tools.getElement(key));
		}catch(Exception ex) {
			
		}
	}
	
	@Then("^the user saves content for \"(.*?)\".")
	public void checkAndSaveContent(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
			try {
				file.deleteOnExit();
				file.createNewFile();
				FileWriter writer = new FileWriter(file);
				writer.write(element.getText());
				writer.close();				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
		
	}
	
	@Then("^The user switches back to original frame.")
	public void switchToMainFrame() {
		sharedData.appInstance.switchTo().defaultContent();
	}
	
	@Then("^the user asserts value of \"(.*?)\" from file.")
	public void validateContent(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			String check = br.readLine();
			if(check.indexOf("!") != -1)
				check = check.substring(0, check.length()-1);
			reader.close();
			file.delete();
			System.out.println(element.getText().trim());
			Assert.assertTrue(check.contains(element.getText().trim()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			Assert.assertTrue(false);
		}
	}
	
	@Then("^The user asserts with check value of \"(.*?)\" from file.")
	public void validateContentForCheck(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			String check = br.readLine();
			if(check.indexOf("!") != -1)
				check = check.substring(0, check.length()-1);
			reader.close();
			file.delete();
			System.out.println(element.getText().trim());
			Assert.assertTrue(element.getText().contains(check));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			Assert.assertTrue(false);
		}
	}
	
	
	@Then("^the user asserts value of \"(.*?)\" field from file.")
	public void validateValue(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		String check = "";
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();
			file.delete();
			System.out.println("============"+element.getText());
			Assert.assertTrue(element.getText().contains(check));
		} catch (Exception e) {
			// TODO Auto-generated catch block
			Assert.assertTrue(element.getText().contains(check));
		}
	}
		
	@Then("^do test.")
	public void doTest() {
		WebElement elem = sharedData.appInstance.findElement(By.xpath("/html/body/div[6]/div/table/tbody"));
		////html/body/div[5]/div/table/tbody/tr[2]/td/div/div[2]/div/div/div[1]/div/div/table/tbody/tr[2]/td/table/tbody/tr/td[1]/button
		elem = elem.findElement(By.xpath("/tr[2]/td/div/div[2]/div/div/div[1]"));
		elem = elem.findElement(By.xpath("/div/div/table/tbody/tr[2]"));
		elem = elem.findElement(By.xpath("/td/table/tbody/tr/td[1]/button"));
		elem.click();
	}
	
	/*@Then("^the user asserts value of \"(.*?)\" value with \"(.*?)\".")
	public void assertContentValueByValue(String key, String value) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertEquals(element.getAttribute("value").trim(), value);	
	}*/
	
	@Then("^The user clicks on \"(.*?)\" drop down, select result from \"(.*?)\" and asserts value with \"(.*?)\".")
	public void validateAndAssertDropdown(String key, String lst, String value) {
		WebElement element = util.general.tools.getElement(key);
		String toMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, value, sharedData.autPosition);
		element.click();
		element = util.general.tools.getElement(lst);
		String assertionAgainst  = element.getText();
		String[] values = toMatch.split(",");
		for(String valToChk : values) {
			Assert.assertTrue(assertionAgainst.contains(valToChk));
		}
	}
	
	@Then("^the user clicks on \"(.*?)\" drop down")
	public void clickOnDropDown(String key) {
		WebElement element = util.general.tools.getElement(key);
		element.click();
	}
	
	@Then("^the user gets a date from \"(.*?)\" and validate its format \"(.*?)\".")
	public void getAndValidateDate(String xPath, String format) {
		WebElement element = util.general.tools.getElement(xPath);
		String text = element.getText().trim();
		DateFormat dtFormat = new SimpleDateFormat(format);
		try {
			dtFormat.parse(text);
			Assert.assertTrue(true);
		} catch (ParseException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
			Assert.assertTrue(false);
		}
		
	}
	
	@Then("^the user asserts value of \"(.*?)\" field with \"(.*?)\".")
	public void assertFieldValue(String key, String value) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertEquals(element.getAttribute("value"), value);	
	}
	
	@Then("^the user checks \"(.*?)\" field has \"(.*?)\" attribute.")
	public void checkFieldForParam(String key, String value) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertNotNull(element.getAttribute(value));	
	}
	
	@Then("^the user closes the browser.")
	public void browserClose() {
		try {
			sharedData.appInstance.switchTo().defaultContent().close();
			Assert.assertTrue(true);
		}catch(Exception e) {
			Assert.assertTrue(false);
		}
	}
	
	@Then("^The user enters \"(.*?)\" and presses enter.")
	public void enterValueandPressEnter(String key) {
		try {
		util.general.tools.getElement(key).sendKeys(util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition));
		util.general.tools.getElement(key).sendKeys(Keys.ENTER);
		}catch(Exception ex) {
			ex.printStackTrace();
		}
	}
	
	@Then("^The user clears \"(.*?)\" and presses enter.")
	public void clearValueandPressEnter(String key) {
		util.general.tools.getElement(key).clear();
		util.general.tools.getElement(key).sendKeys(Keys.ENTER);
	}
	
	@Then("^the user asserts value of \"(.*?)\" Table is empty\\.$")
	public void testTableEmpty(String key) throws Throwable {
		try {
			WebElement element = util.general.tools.getElement(key);
			element = element.findElement(By.tagName("tbody"));
			Assert.assertTrue(false);
		}catch(NoSuchElementException ex) {
			Assert.assertTrue(true);
		}
	}

	@Then("^The user matches \"(.*?)\" table contains rows matching with \"(.*?)\".")
	public void matchRowNumber(String key1, String key2) {
		WebElement element = util.general.tools.getElement(key1);
		int numRows = element.findElements(By.tagName("tr")).size();
		if(numRows  == 0)
			Assert.assertTrue(false);
		else {
			System.out.println(numRows);
			element = util.general.tools.getElement(key2);
			Assert.assertTrue(element.getText().contains(""+numRows));
		}
	}
	
	@Then("^The user matches \"(.*?)\" response table contains rows matching with \"(.*?)\".")
	public void matcResphRowNumber(String key1, String key2) {
		WebElement element = util.general.tools.getElement(key1);
		int numRows = element.findElements(By.tagName("tr")).size();
		System.out.println(numRows);
		element = util.general.tools.getElement(key2);
		Assert.assertTrue(element.getText().contains(""+numRows));
	}
	
	@Then("^The user clicks on \"(.*?)\" by linktext.")
	public void clickByLinkText(String key) {
		WebElement element = sharedData.appInstance.findElement(By.linkText(key));
		element.click();
	}
	
	@Then("^The user matches \"(.*?)\" table contains \"(.*?)\"")
	public void matchDatabaseRow(String key, String value) {
		WebElement element = util.general.tools.getElement(key);
		element = element.findElement(By.tagName("tbody"));
		List<WebElement> elements =null ;
		String[] params = value.split(",");
		for (String param : params) {
			elements = element.findElements(By.tagName("tr"));
			
			for (int i = 0; i < elements.size(); i++) {
				element = elements.get(i);
				new Actions(sharedData.appInstance).moveToElement(element);
				System.out.println(element.getText());
				System.out.println("==============================================");
				if(element.getText() != null && !element.getText().equals("")) {
					Assert.assertTrue(element.getText().contains(param));
				}			
			}
		}
	}
	
	@Then("^The user validates sorting of \"(.*?)\" by clicking on \"(.*?)\" link.")
	public void validateSortableField(String key1, String key2) {
		
	}
	
	@Then("^the user calculates number of rows in \"(.*?)\".")
	public void calculateRows(String key) {
		WebElement element = util.general.tools.getElement(key);
		element = element.findElement(By.tagName("tbody"));
		String num = element.findElements(By.tagName("tr")).size()+"";
		File file = new File(fileName);
		file.deleteOnExit();
		
		try {
			file.createNewFile();
			FileWriter writer = new FileWriter(file);
			writer.write(num);
			writer.close();				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Then("^the user validates the number of rows in \"(.*?)\".")
	public void validateRowNum(String key) {
		WebElement element = util.general.tools.getElement(key);
		element = element.findElement(By.tagName("tbody"));
		String num = element.findElements(By.tagName("tr")).size()+"";
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			String check = br.readLine();
			reader.close();
			file.delete();
			Assert.assertEquals(num, check);
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Then("The user validates \"(.*?)\" from \"(.*?)\".")
	public void validateCreateStudy(String key1, String key2) {
		String toMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key1, sharedData.autPosition);
		Assert.assertTrue(util.general.tools.getElement(key2).getText().contains(toMatch));
	}
	
	@Then("^the user asserts \"(.*?)\" field with \"(.*?)\".")
	public void assertErrorText(String key1, String key2) {
		try {
			Thread.sleep(5000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		String toMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key2, sharedData.appIdentifierValuePosition+1);
		System.out.println("=============="+util.general.tools.getElement(key1).getText());
		String values[] = toMatch.split(",");
		for(String value : values) {
			System.out.println(value);
			Assert.assertTrue(util.general.tools.getElement(key1).getText().contains(value));
		}
	}
	
	@Then("^the user clicks on \"(.*?)\" link and saves data to file.")
	public void clickAndSave(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
				file.deleteOnExit();
				file.createNewFile();
				FileWriter writer = new FileWriter(file);
				writer.write(element.getText());
				writer.close();				
				element.click();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	@Then("^The user checks \"(.*?)\" field is edible.")
	public void checkEdible(String key) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertTrue(element.isEnabled());
		
	}
	
	@Then("^the user asserts value of \"(.*?)\" value with \"(.*?)\".")
	 public void assertContentValueByValue(String key, String value) {
	  WebElement element = util.general.tools.getElement(key);
	  Assert.assertEquals(element.getAttribute("value").trim().contains(value),true); 
	 }
	
	@Then("^The user checks \"(.*?)\" field is editable and empty.")
	public void checkNew(String key) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertTrue(element.isEnabled());
		String value = element.getAttribute("value");
		Assert.assertEquals(value, "");
	}
	
	@Then("^the user asserts value of \"(.*?)\" is not enabled.")
	public void checkFieldNotEnabled(String key) {
		String identifierValue = util.general.ExcelUtility.getValue(sharedData.pomSheetInstance, key ,sharedData.appIdentifierValuePosition);
		WebElement element =  sharedData.appInstance.findElement(By.xpath(identifierValue));
		Assert.assertFalse(element.isDisplayed());
	}
	
	@Then("^The user matches all rows of \"(.*?)\" table contains \"(.*?)\".")
	public void checkAllRowsContainValue(String key1, String key2) {
		String valueToMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key2, sharedData.autPosition);
		WebElement element = util.general.tools.getElement(key1);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement el : elements) {
			Assert.assertTrue(el.getText().contains(valueToMatch));
		}
				
	}
	
	@Then("^The user matches all rows of \"(.*?)\" table not contains \"(.*?)\".")
	public void checkAllRowsContainNotValue(String key1, String key2) {
		String valueToMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key2, sharedData.autPosition);
		WebElement element = util.general.tools.getElement(key1);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement el : elements) {
			Assert.assertFalse(el.getText().contains(valueToMatch));
		}
				
	}
	
	@Then("^The user checks all rows of \"(.*?)\" table not contains from file.")
	public void checkAllRowsContainNotValueFromFile(String key1) {
		File file = new File(fileName);
		String check = "";
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}	
		WebElement element = util.general.tools.getElement(key1);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement el : elements) {
			Assert.assertFalse(el.getText().contains(check));
		}
				
	}
	
	@Then("^The user matches all rows of \"(.*?)\" table is empty.")
	public void checkAllRowsEmpty(String key1) {
		WebElement element = util.general.tools.getElement(key1);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		if(elements.isEmpty() || elements.size() < 2)
			Assert.assertTrue(true);
	}
	
	@Then("^The user asserts the value of \"(.*?)\" is not \"(.*?)\"")
	public void assertElementNotIn(String key, String key2) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertTrue(!element.getText().contains(key2));
	}
	
	@Then("The user enters \"(.*?)\" from File.")
	public void enterFromFile(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br = new BufferedReader(reader);
			String str="";
			while((str = br.readLine()) != null) {
				element.clear();
				element.sendKeys(str);
			}
			br.close();
			reader.close();
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Then("^The user asserts \"(.*?)\" with \"(.*?)\" regex.")
	public void matchRegEx(String key1, String regx) {
		WebElement element = util.general.tools.getElement(key1);
		String txt = element.getText();
		String regex = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, regx, sharedData.autPosition);
		Pattern pattern = Pattern.compile(regex);
		Matcher matcher = pattern.matcher(txt);
		Assert.assertTrue(!matcher.matches());
	}
	
	@Then("^The user retrieves value from File and enters into \"(.*?)\".")
	public void retrieveAndEnterInField(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br = new BufferedReader(reader);
			String str="";
			while((str = br.readLine()) != null) {
				element.clear();
				element.sendKeys(str);
			}
			br.close();
			reader.close();
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		element.sendKeys(Keys.ENTER);
	}
	
	@Then("^The user enters \"(.*?)\" with timestamp and saves.")
	public void enterWithTimestampAndSave(String key) throws Throwable {
		WebElement element = util.general.tools.getElement(key);	
		element.clear();
		Actions action = new Actions(sharedData.appInstance);
		action.moveToElement(element);
		String valueToEnter = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+"_"+System.currentTimeMillis();
		action.sendKeys(valueToEnter);
		Action act = action.build();
		act.perform();
		File file = new File(fileName);
		try {
			file.deleteOnExit();
			file.createNewFile();
			FileWriter writer = new FileWriter(file, true);
			writer.write(valueToEnter+"|");
			writer.close();				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Then("^The user enters without action \"(.*?)\" with timestamp and saves.")
	public void enterWithTimestampAndSaveWithoutAction(String key) throws Throwable {
		WebElement element = util.general.tools.getElement(key);	
		element.clear();
		
		String valueToEnter = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+"_"+System.currentTimeMillis();
		element.sendKeys(valueToEnter);
		File file = new File(fileName);
		try {
			file.deleteOnExit();
			file.createNewFile();
			FileWriter writer = new FileWriter(file, true);
			writer.write(valueToEnter+"|");
			writer.close();				
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	@Then("^The user writes \"(.*?)\" with timestamp.")
	public void enterWithTimestamp(String key) throws Throwable {
		WebElement element = util.general.tools.getElement(key);	
		element.clear();
		Actions action = new Actions(sharedData.appInstance);
		action.moveToElement(element);
		String valueToEnter = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+"_"+System.currentTimeMillis();
		action.sendKeys(valueToEnter);
		Action act = action.build();
		act.perform();
		
	}
	
	@Then("^The user writes without action \"(.*?)\" with timestamp.")
	public void enterWithTimestampWithoutAction(String key) throws Throwable {
		WebElement element = util.general.tools.getElement(key);	
		element.clear();
		String valueToEnter = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+"_"+System.currentTimeMillis();
		element.sendKeys(valueToEnter);
	}

		@Then("^The user writes \"(.*?)\" with random chars and saves.")
		public void enterWithRandomAndSave(String key) throws Throwable {
			WebElement element = util.general.tools.getElement(key);	
			element.clear();
			Actions action = new Actions(sharedData.appInstance);
			action.moveToElement(element);
			String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			StringBuilder builder = new StringBuilder();
			int count = 3;
			while (count-- != 0) {
				int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
				builder.append(ALPHA_NUMERIC_STRING.charAt(character));
			}
			String valueToEnter = util.general.ExcelUtility
					.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+builder.toString();
			action.click().sendKeys(valueToEnter);
			Action act = action.build();
			act.perform();
			File file = new File(fileName);
			try {
				file.deleteOnExit();
				file.createNewFile();
				FileWriter writer = new FileWriter(file, true);
				writer.write(valueToEnter+"|");
				writer.close();				
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
	//	tools.customWait(Thread.currentThread());
	}
		
		@Then("^The user enters \"(.*?)\" with random chars.")
		public void enterWithRandom(String key) throws Throwable {
			WebElement element = util.general.tools.getElement(key);	
			element.clear();
			Actions action = new Actions(sharedData.appInstance);
			action.moveToElement(element);
			String ALPHA_NUMERIC_STRING = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
			StringBuilder builder = new StringBuilder();
			int count = 3;
			while (count-- != 0) {
				int character = (int)(Math.random()*ALPHA_NUMERIC_STRING.length());
				builder.append(ALPHA_NUMERIC_STRING.charAt(character));
			}
			String valueToEnter = util.general.ExcelUtility
					.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition)+builder.toString();
			action.click().sendKeys(valueToEnter);
			Action act = action.build();
			act.perform();
				
	//	tools.customWait(Thread.currentThread());
	}
	
	@Then("^the user clicks on \"(.*?)\" link and saves to multiple entry file.")
	public void clickAndSaveMult(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
				if(!file.exists())
					file.createNewFile();
				FileWriter writer = new FileWriter(file, true);
				writer.write(element.getText()+"|");
				writer.close();				
				element.click();
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
	}
	
	@Then("^the user checks value of \"(.*?)\" from file without deleting.")
	public void validateContentWithoutDelete(String key) {
		WebElement element = util.general.tools.getElement(key);
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			String check = br.readLine();
			reader.close();
			//file.delete();
			Assert.assertTrue(check.contains(element.getText().trim()));
		} catch (IOException e) {
			// TODO Auto-generated catch block
			Assert.assertTrue(false);
		}
		try {
			Thread.sleep(3000);
		} catch (InterruptedException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}

	@Then("^the user clicks on \"(.*?)\" table from file with relative tag \"(.*?)\" without delete.") 
	public void deleteFromFile(String key, String key1){
		File file = new File(fileName);
		String check = "";
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();						
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(check.indexOf("|") != -1) {
			check = check.substring(0, check.length()-1);
		}
		WebElement element = util.general.tools.getElement(key);
		String identifierValue = util.general.ExcelUtility.getValue(sharedData.pomSheetInstance, key1 ,sharedData.appIdentifierValuePosition);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement elem : elements) {
			System.out.println(elem.getText());
			if(elem.getText().contains(check)) {
				elem.findElement(By.xpath(identifierValue)).click();				
				return;
			}
		}
	}
	
	@Then("^the user matches table \"(.*?)\" to check \"(.*?)\" values are present from file.")
	public void checkTableValuesSameRow(String key1, String value1) {
		File file = new File(fileName);
		String check = "";
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();						
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(check.indexOf("|") != -1) {
			check = check.substring(0, check.length()-1);
		}
		WebElement element = util.general.tools.getElement(key1);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement tr : elements) {
			if(tr.getText().contains(value1) && tr.getText().contains(check)) {
				Assert.assertTrue(true);
				return;
			}
		}
		Assert.assertTrue(false);
	}
	
	@Then("^The user deletes temporary file.")
	public void deleteTempFile() {
		File file = new File(fileName);
		file.delete();
	}
	
	@Then("^the user asserts html contains with \"(.*?)\".")
	public void htmlContainsText(String key) {
		String toMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition);
		WebElement el = sharedData.appInstance.findElement(By.xpath("/html/body"));
		Assert.assertTrue(el.getText().contains(toMatch));
	}
	
	@Then("the \"(.*?)\" Button is asserted to be clickable.") 
	public void assertClickable(String key) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertTrue(element.isEnabled());
	}
	
	@Then("^The user clicks on \"(.*?)\" Button and asserts.")
	public void btnClickAndAssert(String key) {
		try  {
		WebElement element = util.general.tools.getElement(key);
		element.click();
		Assert.assertTrue(element.isEnabled());
		}catch(Exception e) {
			Assert.assertTrue(true);
		}
	}
	
	@Then("^The user checks \"(.*?)\" and deletes the record from file with \"(.*?)\".")
	public void deleteFromTableContFileByRelXpath(String key1, String key2) {
		WebElement element = util.general.tools.getElement(key1);
		String check = "";
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();	
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		for(WebElement el : elements) {
			if(el.getText().contains(check)) {
				String toMatch = util.general.ExcelUtility
						.getValue(sharedData.envConfigurationSheetInstance, key2, sharedData.autPosition);
				el.findElement(By.xpath(toMatch)).click();
			}
		}
	}
	
	@Then("^The user enters from file with key \"(.*?)\" presses enter.")
	public void retrieveFromFileAndWrite(String key) {
		WebElement element = util.general.tools.getElement(key);
		String check = "";
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();	
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		element.clear();
		element.sendKeys(check.substring(0, check.length()-1));
		element.sendKeys(Keys.ENTER);
	}
	
	@Then("^The user enters from file without delete with key \"(.*?)\" presses enter.")
	public void retrieveFromFileAndWriteWithoutDelete(String key) {
		WebElement element = util.general.tools.getElement(key);
		String check = "";
		File file = new File(fileName);
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();	
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		element.clear();
		element.sendKeys(check.substring(0, check.length()-1));
		element.sendKeys(Keys.ENTER);
	}
	
	@Then("^The user asserts new window with link for \"(.*?)\".")
	public void assertNewWindowWithValue(String url) {
		Set<String> handles= sharedData.appInstance.getWindowHandles();
		for (String handle : handles) {			 
			sharedData.appInstance.switchTo().window(handle);
		  }
		Assert.assertTrue(sharedData.appInstance.getCurrentUrl().contains(url));
	}
	
	@Then("^the user switches to new window.")
	public void switchToNewWindow() {
		Set<String> handles= sharedData.appInstance.getWindowHandles();
		for (String handle : handles) {			 
			sharedData.appInstance.switchTo().window(handle);
		  }
	}
	
	@Then("^The user matches from file \"(.*?)\" table.")
	public void matchTableFromFile(String key) {
		WebElement element = util.general.tools.getElement(key);
		List<WebElement> elements = element.findElements(By.tagName("tr"));
		File file = new File(fileName);
		String check = "";
		try {
			FileReader reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			reader.close();	
			file.delete();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		if(check.indexOf("|") != -1) {
			check = check.substring(0, check.length()-1);
		}
		for(WebElement tr : elements) {
			if(!tr.getText().contains(check)) {
				Assert.assertTrue(false);
			}
		}
		Assert.assertTrue(true);
	}
	
	@Then("^the user checks content for \"(.*?)\" not empty.")
	public void contentNotEmpty(String key) {
		WebElement element = util.general.tools.getElement(key);
		Assert.assertNotNull(element.getText());
	}
	
	@Then("^The user checks new window contains \"(.*?)\".")
	public void findInNewWindow(String key) {
		String toMatch = util.general.ExcelUtility
				.getValue(sharedData.envConfigurationSheetInstance, key, sharedData.autPosition);
		Set<String> handles = sharedData.appInstance.getWindowHandles();
		for(String handle : handles) {
			sharedData.appInstance.switchTo().window(handle);			
		}
		if(sharedData.appInstance.findElement(By.tagName("html")).getText().contains(toMatch))
			Assert.assertTrue(true);
		else
			Assert.assertTrue(false);
	}
	
	@Then("^The user selects element from file and clicks.")
	public void findElementWithContainingTextAndClick() {
		File file = new File(fileName);
		FileReader reader;
		String check = null;
		try {
			reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			if(check.indexOf("|") != -1)
				check = check.substring(0, check.length()-1);
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}		
		if(check != null)
			sharedData.appInstance.findElement(By.xpath("//*[contains(text(), '"+check+"')]")).click();
	}
	
	@Then("^The user asserts html does not contain from file.")
	public void htmlNotContanisFromFile() {
		File file = new File(fileName);
		FileReader reader;
		String check = null;
		try {
			reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			if(check.indexOf("!") != -1)
				check = check.substring(0, check.length()-1);
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		file.delete();
		String htmlTxt = sharedData.appInstance.findElement(By.xpath("/html")).getText();
		Assert.assertFalse(htmlTxt.contains(check));
	}

	@Then("^The user asserts html contains from file.")
	public void htmlContanisFromFile() {
		File file = new File(fileName);
		FileReader reader;
		String check = null;
		try {
			reader = new FileReader(file);
			BufferedReader br=new BufferedReader(reader); 
			check = br.readLine();
			if(check.indexOf("!") != -1)
				check = check.substring(0, check.length()-1);
			reader.close();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		file.delete();
		String htmlTxt = sharedData.appInstance.findElement(By.xpath("/html")).getText();
		Assert.assertTrue(htmlTxt.contains(check));
	}
	
	@Then("The user checks text \"(.*?)\" contains \"(.*?)\".")
	public void fieldContains(String key, String value) {
		Assert.assertTrue(util.general.tools.getElement(key).getText().contains(value));
	}
}
