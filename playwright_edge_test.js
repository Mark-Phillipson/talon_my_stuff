const { chromium, firefox, webkit } = require('playwright');

(async () => {
    // Launch Microsoft Edge (Chromium-based)
    const browser = await chromium.launch({
        channel: 'msedge',
        headless: false // headed mode
    });
    const page = await browser.newPage();
    await page.goto('https://www.google.com');
    await page.waitForTimeout(5000); // Wait 5 seconds so you can see the browser
    await browser.close();
})();
