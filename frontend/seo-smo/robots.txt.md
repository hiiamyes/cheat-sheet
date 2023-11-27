# robots.txt

`robots.txt` is a text file that webmasters create to instruct web robots (typically search engine robots) how to crawl and index pages on their website. The file defines the rules for accessing and indexing certain parts of a site. The `robots.txt` file must be placed in the root directory of a website and is accessible via `https://yourdomain.com/robots.txt`.

Here's an overview of the syntax and some examples of how to use `robots.txt`:

### **Syntax:**

- **User-agent:** Specifies the web crawler to which the rule applies.
- **Disallow:** Specifies the URL path that you want to prevent the web crawler from accessing.
- **Allow:** Explicitly permits access to a URL path for web crawlers.
- **Sitemap:** Provides the location of the sitemap.

### **Examples:**

1. **Allow all web crawlers to access all content:**

   ```txt
   User-agent: *
   Disallow:
   ```

2. **Prevent all web crawlers from accessing a specific folder:**

   ```txt
   User-agent: *
   Disallow: /private/
   ```

3. **Prevent a specific web crawler from accessing a specific folder:**

   ```txt
   User-agent: Googlebot
   Disallow: /private/
   ```

4. **Prevent all web crawlers from accessing all content:**

   ```txt
   User-agent: *
   Disallow: /
   ```

5. **Allow access to a specific folder but disallow a subfolder within it:**

   ```txt
   User-agent: *
   Allow: /folder/
   Disallow: /folder/subfolder/
   ```

6. **Specify the location of the sitemap:**

   ```txt
   Sitemap: https://yourdomain.com/sitemap.xml
   ```

### **Notes:**

- The `robots.txt` file provides guidelines for well-behaved bots, but malicious crawlers might choose to ignore it.
- A missing `robots.txt` file, or one that doesn't explicitly disallow crawling, is treated as allowing all content to be crawled and indexed.
- Improperly configuring `robots.txt` can prevent search engines from indexing your content, which may impact the visibility of your website in search results.

### **Testing:**

Major search engines like Google provide tools within their webmaster services (like Google Search Console) that allow you to test your `robots.txt` file for errors or warnings.
