### ! This method is deprecated since Looker 5.16

Installing custom visualizations on Looker is easy, and a lot of pre-made visualisations are already available on this [Github repository](https://github.com/looker/visualization-api-examples). To install any custom visualisations, you'll need to add the viz files to the `plugins/visualizations/` subdirectory under the main `looker` directory. If this directory hasn't been created yet, you can create it with `mkdir -p ~/looker/plugins/visualizations; cd ~/looker/plugins/visualizations;`

Adding any custom visualization from the repository is quite easy, just `wget` the visualization file. However, it's a bit tedious to install multiple charts. The bash script below has them all included already, you just need to specify which charts you want to download.

## How to use

Save the script below as a bash file (e.g. `download_viz.sh`), `chmod 777 download_viz.sh` if you can't run it. Then run the script and add one of the chart groups below as parameter, e.g.: `./download_viz.sh highcharts` will install the highcharts examples from [this directory](https://github.com/looker/visualization-api-examples/tree/master/examples/highcharts_example).

## Charts

Use one of the parameters below.

  - `basics` (installs basic charts)
  - `all` (this installs ALL custom visualizations - not recommended)
  - `highcharts` (all Highcharts charts)
  - `bubble`
  - `calendar`
  - `chord`
  - `collapsible_tree`
  - `sankey`
  - `wordcloud`
  - `treemap`
  - `sunburst`
  - `devices`
  - `gauge`
  - `matrix`
  - `scatterplot`
  - `single_value`
  - `small_multiples`
  - `stopwatch`
  - `vega`
