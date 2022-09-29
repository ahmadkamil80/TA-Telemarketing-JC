package runner;

import io.cucumber.testng.AbstractTestNGCucumberTests;
import io.cucumber.testng.CucumberOptions;
/**
Sample mia 2
 */
@CucumberOptions(
		features = "src/main/resources/taskFeatures", 
		glue = "TaskStepdefs",
		plugin= {
				"pretty",
				"html:target/cucumber-reports",
				"json:target/cucumber-reports/Cucumber.json"
		}
		)
public class RunnerMaster extends AbstractTestNGCucumberTests {

}