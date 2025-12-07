// playwright_edge_filtering_screenshots.js
// This script automates the filtering process and takes screenshots for documentation.
// Usage: Run with `npx playwright test playwright_edge_filtering_screenshots.js`

const { chromium } = require('playwright');

(async () => {
    const browser = await chromium.launch({ headless: false });
    const page = await browser.newPage();

    // 1. Go to the report page
    await page.goto('https://localhost:44343/Projects/ClientRevenueReport?from=2025-11-05&to=2025-12-06&clientId=&clientFilter=non-residential');
    await page.screenshot({ path: 'step1_initial_page.png' });

    // 2. Set date range
    await page.fill('input[name="from"]', '05/11/2025');
    await page.fill('input[name="to"]', '06/12/2025');
    await page.screenshot({ path: 'step2_date_range.png' });

    // 3. Select a client (if needed)
    // await page.selectOption('select[name="client"]', { label: 'InstaReport' });
    // await page.screenshot({ path: 'step3_select_client.png' });

    // 4. Select filter type (if needed)
    // await page.selectOption('select[name="filterType"]', { label: 'All Clients Without Residential' });
    // await page.screenshot({ path: 'step4_filter_type.png' });

    // 5. Click Filter
    await page.click('button:has-text("Filter")');
    await page.waitForTimeout(1000); // Wait for results to update
    await page.screenshot({ path: 'step5_filtered_results.png' });

    // 6. (Optional) Use the search box
    // await page.fill('input[placeholder="Search"]', 'InstaReport');
    // await page.screenshot({ path: 'step6_search.png' });

    await browser.close();
})();
