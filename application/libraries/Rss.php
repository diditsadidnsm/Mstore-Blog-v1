<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');
error_reporting(0);
class rss {
 var $feed;
     function __construct($feed = null){
        $this->feed = $feed;   
     }

    function parse(){
        $rss = simplexml_load_file($this->feed);
        $rss_split = array();
        foreach ($rss->channel->item as $item) {
          $title = (string) $item->title; // Judul
          $link   = (string) $item->link; // Link URL
          $view   = (string) $item->view;
          $description = (string) $item->description; // Deskripsi  
          $foto = (string) $item->foto; // Deskripsi  
          $rss_split[] = '
                <li style="padding: 0px 0;" class="item">
                  <div class="product-img">
                    <img class="img-circle img-thumbnail" style="height:50px; width:50px" src="'.$foto.'">
                  </div>
                  <div class="product-info">
                    <a target="_BLANK" href="'.$link.'" class="product-title">'.$title.'
                      <span class="label label-success pull-right">'.$view.' Kali</span></a>
                        <span class="product-description">
                          '.$description.'
                        </span>
                  </div>
                </li>';
        }
        return $rss_split;
    }
      
    function display($numrows,$head){
        $rss_split = $this->parse();
        $i = 0;
        $rss_data = '
        <div class="card">
            <div class="card-header with-border">
              <h3 class="card-title">'.$head.'</h3>
            </div>

            <div class="card-body">
              <ul class="products-list product-list-in-card">';
        while ( $i < $numrows ){
          $rss_data .= $rss_split[$i];
          $i++;
        }
        $trim = str_replace('', '',$this->feed);
        $user = str_replace('&lang=en-us&format=rss_200','',$trim);
        $rss_data.='</ul></div>
                    <div class="card-footer text-center">
                      <a class="btn btn-default btn-sm btn-block" target="_BLANK" href="https://members.phpmu.com/forum" class="uppercase">View All Topic</a><br>
                    </div></div>';
        return $rss_data;
    }
}