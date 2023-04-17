
import concurrent.futures
import newspaper

# Define a function to fetch the top 5 headlines from a single URL
def get_headlines(url):
    # Use the newspaper library to build a news source from the given URL
    result = newspaper.build(url, memoize_articles=False)
    # Print the URL to the console
    print('\n''The headlines from %s are' % url, '\n')
    # Loop over the top 5 articles and print their titles
    for i in range(5):
        # Select the ith article from the source
        article = result.articles[i]
        # Download and parse the article content
        article.download()
        article.parse()
        # Print the article title to the console
        print(article.title)

if __name__ == '__main__':
    # Define a list of URLs to fetch headlines from
    urls = ['http://www.foxnews.com/',
            'http://www.cnn.com/',
            'http://www.derspiegel.de/',
            'http://www.bbc.co.uk/',
            'https://theguardian.com',]

    # Create a thread pool with a maximum of 5 threads
    with concurrent.futures.ThreadPoolExecutor(max_workers=5) as executor:
        # Create a list to store the futures for each URL
        futures = []
        # Submit each URL to the thread pool to be processed concurrently
        for url in urls:
            futures.append(executor.submit(get_headlines, url))

        # Wait for each future to complete and print any exceptions
        for future in concurrent.futures.as_completed(futures):
            try:
                result = future.result()
            except Exception as e:
                print('Exception:', e)
