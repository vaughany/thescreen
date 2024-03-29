<?php

/**
 * Initial configuration settings array.
 */

$CFG['defaults'] = array(
  'page'            => 1,
  'status'          => 1,
  'refresh'         => 300, // May not need this one much longer...
  'rssfeed'         => 'http://newsrss.bbc.co.uk/rss/newsonline_uk_edition/technology/rss.xml',
  'showstopper'     => 'error!',
  'specific_fig'    => 'aaa-random.png',
  'updated'         => $now,
  'installed'       => date( 'c', $now ),
  'forceaprilfool'  => 0,
);
