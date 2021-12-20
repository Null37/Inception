<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_w' );

/** MySQL database username */
define( 'DB_USER', 'NULL37' );

/** MySQL database password */
define( 'DB_PASSWORD', 'user37' );

/** MySQL hostname */
define( 'DB_HOST', 'mariadb:3306' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         '(=)s`t]NSl2v|*O|e:%{H0}T7&0Oyyikr^EkY5lAi:u1&<FSJNftI?  -s:Dgd_k' );
define( 'SECURE_AUTH_KEY',  'TBF%28K7uo8~yd:*wCFZa-k> u(N31QwE@cp$9?1q( yV8!bdruDfs9$Q~+ichv}' );
define( 'LOGGED_IN_KEY',    '._OJyP-|juQ0a5LYeW7$T8PAiaB%eIIg^pPMoOi#Ai`ky#ZkR?To+_W;3:{k9H-R' );
define( 'NONCE_KEY',        'heI`4ms2;?4w1Stohp{m5y~+2!W%kiLx*I}J}k3p_$R}D!C0{`s), KHdHC6Ivr{' );
define( 'AUTH_SALT',        '1Ac#IjWR.KPG1+:[OPdp;K)O.g7n2Eep!nXnED8Ov8Cy,(A/PU[2d3t /H$+B6J:' );
define( 'SECURE_AUTH_SALT', 'VfOd>uX$AEUp$WL1%;r1fHeJ<lXw/aP( {8ihh/5mK=>XkL*f/yOAvd$X5aNqZb2' );
define( 'LOGGED_IN_SALT',   'gORL!]YTxKMI4OiFk-o*.)!KG]2[k</X!].2u4gJ{PKO%ylilIIpgD)tn@.S_+v>' );
define( 'NONCE_SALT',       '{z)gOeJ/*6l61)A@FX2^Ai12s4hDHG i;q?i58x>y@MhFH@ ?T0^oZOD7l0D,1=?' );

/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
define( 'WP_DEBUG', false );

/* Add any custom values between this line and the "stop editing" line. */



/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
