<?php
/* @var $this OrgContactController */
/* @var $model OrgContact */

$this->breadcrumbs=array(
	'Org Contacts'=>array('index'),
	$model->title,
);

$this->menu=array(
	array('label'=>'List OrgContact', 'url'=>array('index')),
	array('label'=>'Create OrgContact', 'url'=>array('create')),
	array('label'=>'Update OrgContact', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete OrgContact', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage OrgContact', 'url'=>array('admin')),
);
?>

<h1>View OrgContact #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'email',
		'roleId',
		'title',
	),
)); ?>
