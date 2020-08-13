<?php

defined('BASEPATH') OR exit('No direct script access allowed');
class Login extends CI_Controller {
	function index(){
		if (isset($_POST['submit'])){
            if ($this->input->post() && (strtolower($this->input->post('security_code')) == strtolower($this->session->userdata('mycaptcha')))) {
                $username = $this->input->post('a',TRUE);
    			$password = hash("sha512", md5($this->input->post('b',TRUE)));
    			$cek = $this->model_app->cek_login($username,$password,'users');
    		    $row = $cek->row_array();
    		    $total = $cek->num_rows();
    			if ($total > 0){
    				$this->session->set_userdata('upload_image_file_manager',true);
    				$this->session->set_userdata(array('username'=>$row['username'],
    								   'level'=>$row['level'],
                                       'id_session'=>$row['id_session']));
                        redirect('administrator/home');
    			}else{
                    echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Username dan Password Salah!!</center></div>');
    				redirect('administrator/home');
    			}
            }else{
                echo $this->session->set_flashdata('message', '<div class="alert alert-danger"><center>Security Code salah!</center></div>');
                redirect('administrator/home');
            }
		}else{
            if ($this->session->level!=''){
              redirect('administrator/home');
            }else{
                $this->load->helper('captcha');
                $vals = array(
                    'img_path'   => './captcha/',
                    'img_url'    => base_url().'captcha/',
                    'font_size'     => 17,
                    'img_width'  => '320',
                    'img_height' => 33,
                    'border' => 0, 
                    'word_length'   => 5,
                    'expiration' => 7200
                );

                $cap = create_captcha($vals);
                $data['image'] = $cap['image'];
                $this->session->set_userdata('mycaptcha', $cap['word']);
    			$data['title'] = 'Users &rsaquo; Log In';
    			$this->load->view('administrator/view_login',$data);
            }
		}
    }

	function logout(){
		$this->session->sess_destroy();
		redirect('main');
	}
}
