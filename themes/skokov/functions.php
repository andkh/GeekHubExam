<?php
// ENQUEUE STYLES
	function enqueue_styles() {
	    wp_enqueue_style( 'style', get_stylesheet_uri());
		wp_enqueue_style( 'maxcdn','http://maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css');
	}
	add_action('wp_enqueue_scripts', 'enqueue_styles');
// ENQUEUE SCRIPTS
	function enqueue_scripts () {
		wp_enqueue_script('jquery-1.11.2.min', get_template_directory_uri() . '/js/jquery-1.11.2.min.js', 'wp_footer');
		wp_enqueue_script('html5-shim', 'http://html5shim.googlecode.com/svn/trunk/html5.js', 'wp_footer');
		wp_enqueue_script('css3-mediaqueries', 'http://css3-mediaqueries-js.googlecode.com/svn/trunk/css3-mediaqueries.js','wp_footer');
		wp_enqueue_script('masonry.pkgd.min', get_template_directory_uri() . '/js/masonry.pkgd.min.js', 'wp_footer');
		wp_enqueue_script('main', get_template_directory_uri() . '/js/main.js', 'wp_footer');
	}
	add_action('wp_enqueue_scripts', 'enqueue_scripts');

// -Thumbnail
	 add_theme_support('post-thumbnails');

// -Logo
	function my_after_setup_theme() {
		add_image_size( 'my-theme-logo-size', 'auto','auto', true );
		add_theme_support( 'site-logo', array( 'size' => 'my-theme-logo-size' ) );
	}
	add_action( 'after_setup_theme', 'my_after_setup_theme' );

// -Menu ---
	 if (function_exists('add_theme_support')) {
 	    	add_theme_support('menus');
	 }

// -Delete empty tags in posts ---
	 function change_mce_options($initArray) {
 
	     $initArray['verify_html'] = false;
	     $initArray['cleanup_on_startup'] = false;
	     $initArray['cleanup'] = false;
	     $initArray['forced_root_block'] = false;
	     $initArray['validate_children'] = false;
	     $initArray['remove_redundant_brs'] = false;
	     $initArray['remove_linebreaks'] = false;
	     $initArray['force_p_newlines'] = false;
	     $initArray['force_br_newlines'] = false;
	     $initArray['fix_table_elements'] = false;
	 
	     $initArray['entities'] = '160,nbsp,38,amp,60,lt,62,gt';
	 
	     return $initArray;
	 }
	 add_filter('tiny_mce_before_init', 'change_mce_options');
	
 // -Register Widget
	 register_sidebar(array(
	 	'name' => 'Text area sidebar',
	 	'id' => 'sidebar',
	 	'description' => 'Insert widget in sidebar',
	 ));
register_sidebar(array(
	'name' => 'Text area footer',
	'id' => 'wrap-footer',
	'description' => 'Insert widget in footer',
));
?>