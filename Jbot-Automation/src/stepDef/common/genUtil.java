package stepDef.common;

import java.io.File;
import java.util.Arrays;

import util.sharedData;
import cucumber.api.java.en.Then;

public class genUtil {
	@Then("^The user gets latest downloaded file\\.$")
	public void the_user_gets_latest_downloaded_file() throws Throwable {
		//System.out.println(util.general.FileTools.getLastDownloadedFile());
		sharedData.latestDownloadedFile = util.general.FileTools.getLastDownloadedFile().getAbsolutePath();
	}
	
	@Then("^the user uploads a file using \"(.*?)\"\\.$")
	public void the_user_uploads_a_file_using(String fieldName) throws Throwable
	{	
		if (fieldName.equals("File Upload")) 
		{
			util.general.tools.getElement(fieldName).click();
			 Process p = Runtime.getRuntime().exec("./executers/uploadAFile.exe " + sharedData.latestDownloadedFile);

		}

	//	util.general.tools.getElement(fieldName).sendKeys(sharedData.latestDownloadedFile);
	}


}
