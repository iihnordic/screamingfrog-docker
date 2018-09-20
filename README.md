# ScreamingFrog Docker

WIP to provide headless screaming frogs.

Contains a Docker installation Ubuntu ScreamingFrog v10 intended to be used for its [Command Line Interface](https://www.screamingfrog.co.uk/seo-spider/user-guide/general/#command-line).

`docker build https://github.com/iihnordic/screamingfrog-docker`

Or clone repo and run:

`docker build -t screamingfrog .`

Or submit to Google Build Triggers, which will host it for you privately at a URL like 
`gcr.io/your-project/screamingfrog-docker:a2ffbd174483aaa27473ef6e0eee404f19058b1a` - for use in Kubernetes and such like. 

TBD: adding your license key via the `license.conf`

## Usage

Once the image is built it can be reached via `docker run screamingfrog`.  By default it will show `--help`

```
docker run screamingfrog
usage: ScreamingFrogSEOSpider [crawl-file|options]

Positional arguments:
    crawl-file
                         Specify a crawl to load. This argument will be ignored if there
                         are any other options specified

Options:
    --crawl <url>
                         Start crawling the supplied URL

    --crawl-list <list file>
                         Start crawling the specified URLs in list mode

    --config <config>
                         Supply a config file for the spider to use

    --use-majestic
                         Use Majestic API during crawl

    --use-mozscape
                         Use Mozscape API during crawl

    --use-ahrefs
                         Use Ahrefs API during crawl

    --use-google-analytics <google account> <account> <property> <view> <segment>
                         Use Google Analytics API during crawl

    --use-google-search-console <google account> <website>
                         Use Google Search Console API during crawl

    --headless
                         Run in silent mode without a user interface

    --output-folder <output>
                         Where to store saved files. Default: current working directory

    --export-format <csv|xls|xlsx>
                         Supply a format to be used for all exports

    --overwrite
                         Overwrite files in output directory

    --timestamped-output
                         Create a timestamped folder in the output directory, and store
                         all output there

    --save-crawl
                         Save the completed crawl

    --export-tabs <tab:filter,...>
                         Supply a comma separated list of tabs to export. You need to
                         specify the tab name and the filter name separated by a colon

    --bulk-export <[submenu:]export,...>
                         Supply a comma separated list of bulk exports to perform. The
                         export names are the same as in the Bulk Export menu in the UI.
                         To access exports in a submenu, use <submenu-name:export-name>

    --save-report <[submenu:]report,...>
                         Supply a comma separated list of reports to save. The report
                         names are the same as in the Report menu in the UI. To access
                         reports in a submenu, use <submenu-name:report-name>

    --create-sitemap
                         Creates a sitemap from the completed crawl

    --create-images-sitemap
                         Creates an images sitemap from the completed crawl

 -h, --help
                         Print this message and exit
```



