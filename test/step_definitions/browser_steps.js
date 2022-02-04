const { When, Then, setDefaultTimeout } = require('cucumber');
const { expect } = require('chai');
setDefaultTimeout(60000);

When(/^I open "([^"]*)" url$/, function(url) {
    return browser.get(url);
});

Then(/^Page title should be "([^"]*)"$/, async function(titleOfPage) {
    const pageTitle = await browser.getTitle();
    expect(pageTitle).to.be.equal(titleOfPage);
});

When(/^I wait "([^"]*)" seconds$/, function(timeInSeconds) {
    return browser.sleep(timeInSeconds * 1000);
});

Then(/^Page have "Models" section$/, async function() {
    const modelSection = await element(by.xpath('/html/body/main/div[2]/div[1]/h2/span')).getText();
    expect(modelSection).to.be.equal('Models');
});