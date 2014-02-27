<?php
/* @var $this VolunteerNoteController */
/* @var $model VolunteerNote */

$this->breadcrumbs=array(
	'Volunteer Notes'=>array('index'),
	$model->id,
);

$this->menu=array(
	array('label'=>'List VolunteerNote', 'url'=>array('index')),
	array('label'=>'Create VolunteerNote', 'url'=>array('create')),
	array('label'=>'Update VolunteerNote', 'url'=>array('update', 'id'=>$model->id)),
	array('label'=>'Delete VolunteerNote', 'url'=>'#', 'linkOptions'=>array('submit'=>array('delete','id'=>$model->id),'confirm'=>'Are you sure you want to delete this item?')),
	array('label'=>'Manage VolunteerNote', 'url'=>array('admin')),
);
?>

<h1>View VolunteerNote #<?php echo $model->id; ?></h1>

<?php $this->widget('zii.widgets.CDetailView', array(
	'data'=>$model,
	'attributes'=>array(
		'id',
		'volunteerEmail',
		'organizerEmail',
		'organizationId',
		'dateTime',
		'content',
	),
)); ?>
