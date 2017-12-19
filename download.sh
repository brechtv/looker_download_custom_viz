#!/bin/bash
{

R="https://raw.githubusercontent.com/looker/visualization-api-examples/master/examples"

function install_dependencies {
  echo "Downloading dependencies..."
  if [ ! -f d3.v4.js ]; then
    echo "d3.v4 not found, downloading..."
    wget -c "${R}/common/d3.v4.js"
  else echo "d3.v4 already available. skipping..."
  fi
    if [ ! -f utils.js ]; then
    echo "utils not found, downloading..."
    wget -c "${R}/common/utils.js"
  else echo "utils already available. skipping..."
  fi
    if [ ! -f vega.min.js ]; then
    echo "vega not found, downloading..."
    wget -c "${R}/common/vega.min.js"
  else echo "vega already available. skipping..."
  fi
}

function install_basics {
  install_dependencies
  echo "Downloading Basic Charts ..."
  wget -c "${R}/bubbles/bubble.js"
  wget -c "${R}/sankey/d3.sankey.js"
  wget -c "${R}/sankey/sankey.js"
  wget -c "${R}/treemap/treemap.js"
  wget -c "${R}/scatterplot_matrix/scatterplot_matrix.js"
}

function install_highcharts {
  install_dependencies
  echo "Downloading Highcharts..."
  wget -c "${R}/common/highcharts.js"
  wget -c "${R}/highcharts_example/highcharts_arearange.js"
  wget -c "${R}/highcharts_example/highcharts_boxplot.js"
  wget -c "${R}/highcharts_example/highcharts_bubble.js"
  wget -c "${R}/highcharts_example/highcharts_heatmap.js"
  wget -c "${R}/highcharts_example/highcharts_histogram.js"
  wget -c "${R}/highcharts_example/highcharts_spiderweb.js"
  wget -c "${R}/highcharts_example/highcharts_treemap.js"
  wget -c "${R}/highcharts_example/highcharts_waterfall.js"
}

function install_all {
  echo "Downloading all custom charts..."
  install_highcharts
  install_bubble
  install_calendar
  install_chord
  install_collapsible_tree
  install_sankey
  install_wordcloud
  install_treemap
  install_sunburst
  install_devices
  install_gauge
  install_matrix
  install_scatterplot
  install_single_value
  install_small_multiples
  install_stopwatch
  install_vega
}

function install_bubble {
  install_dependencies
  echo "Downloading Bubble charts..."
  wget -c "${R}/bubbles/bubble.js"
}

function install_calendar {
  install_dependencies
  echo "Bubble charts downloading..."
  wget -c "${R}/bubbles/bubble.js"
  wget -c "${R}/calendar/calendar.js"
  wget -c "${R}/calendar/calendar_view.js"
}

function install_chord {
  install_dependencies
  echo "Downloading Bubble charts..."
  wget -c "${R}/chord/chord.js"
}

function install_collapsible_tree {
  install_dependencies
  echo "Downloading Collapsible Tree charts..."
  wget -c "${R}/collapsible_tree/collapsible_tree.js"
}

function install_sankey {
  install_dependencies
  echo "Downloading Sankey charts..."
  wget -c "${R}/sankey/d3.sankey.js"
  wget -c "${R}/sankey/sankey.js"
}

function install_wordcloud {
  install_dependencies
  echo "Downloading Word Cloud charts..."
  wget -c "${R}/word_cloud/cloud_function.js"
  wget -c "${R}/word_cloud/word_cloud.js"
}

function install_treemap {
  install_dependencies
  echo "Downloading Treemap charts..."
  wget -c "${R}/treemap/treemap.js"
}

function install_sunburst {
  install_dependencies
  echo "Downloading Sunburst charts..."
  wget -c "${R}/sunburst/sunburst.js"
}

function install_devices {
  install_dependencies
  echo "Downloading Devices charts..."
  wget -c "${R}/devices/devices.js"
}

function install_gauge {
  install_dependencies
  echo "Downloading Gauge charts..."
  wget -c "${R}/gauge/gauge.js"
  wget -c "${R}/liquid_fill_gauge/liquid_fill_gauge.js"
}

function install_matrix {
  install_dependencies
  echo "Downloading Matrix charts..."
  wget -c "${R}/matrix/matrix.js"
}

function install_scatterplot {
  install_dependencies
  echo "Downloading Scatterplot charts..."
  wget -c "${R}/scatterplot_matrix/scatterplot_matrix.js"
}

function install_single_value {
  install_dependencies
  echo "Downloading Single value charts..."
 wget -c "${R}/single_value_panes/single_value_panes.js"
}

function install_small_multiples {
  install_dependencies
  echo "Downloading Small Multiples charts..."
 wget -c "${R}/small_multiples/small-multiples.js"
}

function install_stopwatch {
  install_dependencies
  echo "Downloading Stopwatch charts..."
 wget -c "${R}/stopwatch/stopwatch.js"
}

function install_vega {
  install_dependencies
  echo "Downloading Vega charts..."
 wget -c "${R}/vega/vega.js"
}

if [ "$PWD" != "*looker/plugins/visualizations*" ]
  then
  echo "Not in Looker directory, switching..."
  cd ~/looker/plugins/visualizations
  echo "Current dir: $PWD"
fi

if [ "$1" = "help" ]
then echo "
Allowed parameter values
------------------------

  - `help` (this help menu)
  - `basics` (basic charts)
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

Source
------

All examples are available on the Github repository
  - https://raw.githubusercontent.com/looker/visualization-api-examples/master/examples
"
elif [ "$1" = "dependencies" ]
  then install_dependencies
elif [ "$1" = "basics" ]
  then install_basics
elif [ "$1" = "all" ]
  then install_all
elif [ "$1" = "highcharts" ]
  then install_highcharts
elif [ "$1" = "bubble" ]
  then install_bubble
elif [ "$1" = "calendar" ]
  then install_calendar
elif [ "$1" = "chord" ]
  then install_chord
elif [ "$1" = "collapsible_tree" ]
  then install_collapsible_tree
elif [ "$1" = "sankey" ]
  then install_sankey
elif [ "$1" = "wordcloud" ]
  then install_wordcloud
elif [ "$1" = "treemap" ]
  then install_treemap
elif [ "$1" = "sunburst" ]
  then install_sunburst
elif [ "$1" = "devices" ]
  then install_devices
elif [ "$1" = "gauge" ]
  then install_gauge
elif [ "$1" = "matrix" ]
  then install_matrix
elif [ "$1" = "scatterplot" ]
  then install_scatterplot
elif [ "$1" = "single_value" ]
  then install_single_value
elif [ "$1" = "small_multiples" ]
  then install_small_multiples
elif [ "$1" = "stopwatch" ]
  then install_stopwatch
elif [ "$1" = "vega" ]
  then install_vega
else echo "Specify a parameter"
fi

} || {
  echo "Could not download viz!"
}
