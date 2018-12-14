<?php
namespace Bpai\Api\Controllers;
use Phalcon\Tag;
use Bpai\Models\Posts;

/**
 * @desc 首页
 * @date 2015-07-16 14:46
 * */
class IndexController extends ControllerBase
{
    public function initialize()
    {
        parent::initialize();
        \Phalcon\Tag::prependTitle($this->_TagConfig[$this->router->getControllerName()]);

    }
    
    public function indexAction()
    {
        $result = $this->getPosts();
        $this->view->setVar('data',$result['data']);
    }

    protected function strManipulation($str){
        $string = '';
        if($str){
            $len = mb_strlen($str);
            for($i = 0 ;$i < $len ; $i++){
                $tmp = mb_substr($str,$i,1);
                $string .= "<em>{$tmp}</em>";
                unset($tmp);
            }
        }
        return $string;
    }

 }