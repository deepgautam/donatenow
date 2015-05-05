/**
 * @license Copyright (c) 2003-2015, CKSource - Frederico Knabben. All rights reserved.
 * For licensing, see LICENSE.md or http://ckeditor.com/license
 */

 CKEDITOR.editorConfig = function( config ) {
	// Define changes to default configuration here. For example:
	// config.uiColor = '#AADC6E';
	config.removeButtons = 'Save';
	config.removePlugins = 'about,language,forms,flash,bidi';
	config.filebrowserBrowseUrl = '../php/browse.php';
	config.filebrowserImageBrowseUrl= '../php/browse.php';
   config.filebrowserUploadUrl = '../php/upload.php';
	config.filebrowserImageUploadUrl = '../php/upload.php';
};
