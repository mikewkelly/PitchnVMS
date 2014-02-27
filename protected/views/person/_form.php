<?php
/* @var $this PersonController */
/* @var $model Person */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'person-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'email'); ?>
		<?php echo $form->textField($model,'email',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'email'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'causeId'); ?>
		<?php echo $form->textField($model,'causeId'); ?>
		<?php echo $form->error($model,'causeId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'skillId'); ?>
		<?php echo $form->textField($model,'skillId'); ?>
		<?php echo $form->error($model,'skillId'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'name'); ?>
		<?php echo $form->textField($model,'name',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'name'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'phone'); ?>
		<?php echo $form->textField($model,'phone',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'phone'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'workPhone'); ?>
		<?php echo $form->textField($model,'workPhone',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'workPhone'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'password'); ?>
		<?php echo $form->passwordField($model,'password',array('size'=>30,'maxlength'=>30)); ?>
		<?php echo $form->error($model,'password'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'permissionLevel'); ?>
		<?php echo $form->textField($model,'permissionLevel'); ?>
		<?php echo $form->error($model,'permissionLevel'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'userType'); ?>
		<?php echo $form->textField($model,'userType',array('size'=>13,'maxlength'=>13)); ?>
		<?php echo $form->error($model,'userType'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'birthdate'); ?>
		<?php echo $form->textField($model,'birthdate'); ?>
		<?php echo $form->error($model,'birthdate'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'locationCity'); ?>
		<?php echo $form->textField($model,'locationCity',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'locationCity'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'locationProvince'); ?>
		<?php echo $form->textField($model,'locationProvince',array('size'=>2,'maxlength'=>2)); ?>
		<?php echo $form->error($model,'locationProvince'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'locationCountry'); ?>
		<?php echo $form->textField($model,'locationCountry',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'locationCountry'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'language'); ?>
		<?php echo $form->textField($model,'language',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'language'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'description'); ?>
		<?php echo $form->textField($model,'description',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'description'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'registered'); ?>
		<?php echo $form->textField($model,'registered',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'registered'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'lastActive'); ?>
		<?php echo $form->textField($model,'lastActive'); ?>
		<?php echo $form->error($model,'lastActive'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'active'); ?>
		<?php echo $form->textField($model,'active',array('size'=>1,'maxlength'=>1)); ?>
		<?php echo $form->error($model,'active'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'status'); ?>
		<?php echo $form->textField($model,'status',array('size'=>12,'maxlength'=>12)); ?>
		<?php echo $form->error($model,'status'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->