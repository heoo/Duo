<?php
namespace Bpai\Api\Controllers;
use Phalcon\Tag;
use Bpai\Models\Posts;
class PostsController extends ControllerBase {

    public $Models;
	public function initialize() {
		parent::initialize();
//		Tag::prependTitle($this->_TagConfig[$this->router->getControllerName()]);
		$this->Models = new Posts();
	}
	
	public function indexAction() {

	    $categoryName = $this->getCategory($this->get('cid'));
        Tag::prependTitle($categoryName);

//        if($this->isMobile()){
//
//            $this->Models->setWhere(array('language'=>$this->Language,'status'=>1,'attachment'=>array('attachment','!=',''),'cid'=>intval($this->get('cid'))));
//            $this->Models->setOrder(array('id'=>'DESC'));
//            $res = $this->Models->findRec();
//            if($res){
//
//                Tag::prependTitle($res->name.'-');
//                if($res->attachment){
//
//                    $attachment = explode(',',$res->attachment);
//                }
//
//                $this->view->setVar('data',$res);
//                $this->view->setVar('attachment',$attachment);
//
//                $this->view->setVar('count',count($attachment));
//                $this->view->setVar('next',$this->getNearId($res->id));
//
//                $this->view->setVar('previous',$this->getNearId($res->id,'previous'));
//
//                $this->view->pick('posts/details-wap');
//
//            }else{
//
//                $this->response->redirect("/{$this->router->getModuleName()}/error",true);
//            }
//
//        }else{
        $data = $this->getPosts($this->get('cid'));
        //large 四
        //vertical 竖排2
        //transverse 横排2
//        echo '<pre>';
        $arr = [];
        $rule = [
            ['large','default','default','vertical'],
            ['large','vertical','vertical'],
            ['large','transverse','transverse','default','default'],
            ['large','transverse','transverse','vertical'],
            ['large','default','default','default','default','default','default'],
            ['transverse','transverse','transverse','transverse'],
            ['transverse','transverse','vertical','vertical'],
            ['transverse','transverse','vertical','default','default'],
            ['transverse','transverse','default','default','default','default'],
            ['vertical','vertical','vertical','vertical',],
            ['default','default','default','default','default','default','default','default'],
        ];

        if ($data['data']){

            $count = $data['count'];
            $defaultCount = $count['default']['count'];
            $largeCount = $count['large']['count'];
            $verticalCount = $count['vertical']['count'];
            $transverseCount = $count['transverse']['count'];
            if($transverseCount % 2 != 0){
                $defaultCount +=1;
                $transverseCount -=1;
                $sliceId = $count['default']['data'][0];
                unset($count['default']['data'][0]);
                array_push($count['default']['data'],$sliceId);
            }
//            var_dump($defaultCount,$largeCount,$verticalCount,$transverseCount);exit;
            $tmp = $data['data'];
            if ($count['vertical']['count']){
                foreach ($count['vertical']['data'] as $id){
                    array_push($arr,$tmp[$id]);
                    unset($tmp[$id]);
                }
            }
            if ($count['large']['count']){
                foreach ($count['large']['data'] as $id){
                    array_push($arr,$tmp[$id]);
                    unset($tmp[$id]);
                }
            }

            if ($count['transverse']['count']){
                foreach ($count['transverse']['data'] as $id){
                    array_push($arr,$tmp[$id]);
                    unset($tmp[$id]);
                }
            }
            foreach ($tmp as $val){
                array_push($arr,$val);
            }
        }
            $this->view->setVar('data',$arr);
//        }
	}

    public function detailsAction(){

        $this->Models->setWhere(array('id'=>$this->get('id'),'language'=>$this->Language,'status'=>1,'attachment'=>array('attachment','!=','')));
        $res = $this->Models->findRec();
        if($res){

            Tag::prependTitle($res->name.'-');
            if($res->attachment){

                $attachment = explode(',',$res->attachment);
            }

            $this->view->setVar('data',$res);
            $this->view->setVar('attachment',$attachment);

            $this->view->setVar('count',count($attachment));
            $this->view->setVar('next',$this->getNearId($res->id));

            $this->view->setVar('previous',$this->getNearId($res->id,'previous'));

            if($this->isMobile()){
                $this->view->pick('posts/details-wap');
            }
        }else{

            $this->response->redirect("/{$this->router->getModuleName()}/error",true);
        }
    }

    public function iframeAction(){
        $this->view->setTemplateAfter('null');

    }
	
}
