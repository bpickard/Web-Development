/**
 * Plugin Name: Enable Unfiltered HTML on Import
 * Plugin URI: https://github.com/bpickard/Web-Development/enable_unfiltered_html_import.php
 * Description: This plugin allows unfiltered HTML such as <iframe> and <script> tags to be imported
 * Version: 1.0.0
 * Author: Bill Pickard
 * Author URI: http://www.billrpickard.com
 * License: GPL2
 */

add_filter( 'force_filtered_html_on_import' , '__return_false' );