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
> docker run screamingfrog

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



The license and EULA needs accepting before use, I don't know how to configure that yet:

```
> docker run screamingfrog --crawl http://iihnordic.com --headless

2018-09-20 12:51:11,640 [main] INFO  - Persistent config file does not exist, /root/.ScreamingFrogSEOSpider/spider.config
2018-09-20 12:51:11,827 [8] [main] INFO  - Application Started
2018-09-20 12:51:11,836 [8] [main] INFO  - Running: Screaming Frog SEO Spider 10.0
2018-09-20 12:51:11,837 [8] [main] INFO  - Build: 5784af3aa002681ab5f8e98aee1f43c1be2944af
2018-09-20 12:51:11,838 [8] [main] INFO  - Platform Info: Name 'Linux' Version '4.9.93-linuxkit-aufs' Arch 'amd64'
2018-09-20 12:51:11,838 [8] [main] INFO  - Java Info: Vendor 'Oracle Corporation' URL 'http://java.oracle.com/' Version '1.8.0_161' Home '/usr/share/screamingfrogseospider/jre'
2018-09-20 12:51:11,838 [8] [main] INFO  - VM args: -Xmx2g, -XX:+UseG1GC, -XX:+UseStringDeduplication, -enableassertions, -XX:ErrorFile=/root/.ScreamingFrogSEOSpider/hs_err_pid%p.log, -Djava.ext.dirs=/usr/share/screamingfrogseospider/jre/lib/ext
2018-09-20 12:51:11,839 [8] [main] INFO  - Log File: /root/.ScreamingFrogSEOSpider/trace.txt
2018-09-20 12:51:11,839 [8] [main] INFO  - Fatal Log File: /root/.ScreamingFrogSEOSpider/crash.txt
2018-09-20 12:51:11,840 [8] [main] INFO  - Logging Status: OK
2018-09-20 12:51:11,840 [8] [main] INFO  - Memory: Physical=2.0GB, Used=12MB, Free=19MB, Total=32MB, Max=2048MB, Using 0%
2018-09-20 12:51:11,841 [8] [main] INFO  - Licence File: /root/.ScreamingFrogSEOSpider/licence.txt
2018-09-20 12:51:11,841 [8] [main] INFO  - Licence Status: invalid
2018-09-20 12:51:11,841 [8] [main] INFO  - Locale: en_US
2018-09-20 12:51:12,053 [8] [main] INFO  - Rendering supported on this platform
2018-09-20 12:51:12,063 [8] [main] INFO  - Persistent config file does not exist, /root/.ScreamingFrogSEOSpider/spider.config
2018-09-20 12:51:12,206 [8] [main] WARN  - Unable to find a suitable Arial font - letting system select best matching font
2018-09-20 12:51:12,317 [8] [main] INFO  - Image scaling set at [1.0]
2018-09-20 12:51:12,564 [8] [main] INFO  - Setting proxy: ProxySettings [mEnabled=false, mHost=, mPort=3128]
2018-09-20 12:51:12,663 [8] [main] INFO  - Has not accepted the current version of the EULA yet.
2018-09-20 12:51:12,668 [8] [main] INFO  - User did not accept the licence agreement, exiting.
2018-09-20 12:51:12,673 [8] [exitlogger] INFO  - Application Exited
```

