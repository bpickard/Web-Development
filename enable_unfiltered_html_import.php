<?php 
/**
 * Plugin Name: Allow unfiltered HTML content on import
 * Plugin URI: https://github.com/bpickard/Web-Development/blob/master/enable_unfiltered_html_import.php
 * Description: Allows unfiltered HTML content to be imported (e.g. script/ig
 * Version: 1.0.0
 * Author: Bill Pickard
 * Author URI: 
 * License: GPL2
 */

/* Found at https://wordpress.stackexchange.com/questions/1549/disabling-html-filtering-when-importing-into-wordpress-multisite */
add_filter( 'force_filtered_html_on_import' , '__return_false' );
