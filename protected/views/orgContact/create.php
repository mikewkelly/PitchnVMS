<?php
/* @var $this OrgContactController */
/* @var $model OrgContact */

$this->breadcrumbs=array(
	'Org Contacts'=>array('index'),
	'Create',
);

$this->menu=array(
	array('label'=>'List OrgContact', 'url'=>array('index')),
	array('label'=>'Manage OrgContact', 'url'=>array('admin')),
);
?>

<h1>Create OrgContact</h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>