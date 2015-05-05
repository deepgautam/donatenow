<?php
if (!function_exists('format')) {
    function format($date_string, $format="F j, Y, g:i a")
    {
        return date_format(date_create($date_string),$format);
    }
}
?>