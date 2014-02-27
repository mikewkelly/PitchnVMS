<?php
/* @var $this CauseController */
/* @var $model Cause */

$this->breadcrumbs=array(
	'Causes'=>array('index'),
	$model->id=>array('view','id'=>$model->id),
	'Update',
);

$this->menu=array(
	array('label'=>'List Cause', 'url'=>array('index')),
	array('label'=>'Create Cause', 'url'=>array('create')),
	array('label'=>'View Cause', 'url'=>array('view', 'id'=>$model->id)),
	array('label'=>'Manage Cause', 'url'=>array('admin')),
);
?>

<h1>Update Cause <?php echo $model->id; ?></h1>

<?php $this->renderPartial('_form', array('model'=>$model)); ?>