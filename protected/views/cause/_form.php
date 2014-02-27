<?php
/* @var $this CauseController */
/* @var $model Cause */
/* @var $form CActiveForm */
?>

<div class="form">

<?php $form=$this->beginWidget('CActiveForm', array(
	'id'=>'cause-form',
	// Please note: When you enable ajax validation, make sure the corresponding
	// controller action is handling ajax validation correctly.
	// There is a call to performAjaxValidation() commented in generated controller code.
	// See class documentation of CActiveForm for details on this.
	'enableAjaxValidation'=>false,
)); ?>

	<p class="note">Fields with <span class="required">*</span> are required.</p>

	<?php echo $form->errorSummary($model); ?>

	<div class="row">
		<?php echo $form->labelEx($model,'animalWelfare'); ?>
		<?php echo $form->textField($model,'animalWelfare'); ?>
		<?php echo $form->error($model,'animalWelfare'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'artsAndCulture'); ?>
		<?php echo $form->textField($model,'artsAndCulture'); ?>
		<?php echo $form->error($model,'artsAndCulture'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'children'); ?>
		<?php echo $form->textField($model,'children'); ?>
		<?php echo $form->error($model,'children'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'communityAndService'); ?>
		<?php echo $form->textField($model,'communityAndService'); ?>
		<?php echo $form->error($model,'communityAndService'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'democracyAndPolitics'); ?>
		<?php echo $form->textField($model,'democracyAndPolitics'); ?>
		<?php echo $form->error($model,'democracyAndPolitics'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'education'); ?>
		<?php echo $form->textField($model,'education'); ?>
		<?php echo $form->error($model,'education'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'environment'); ?>
		<?php echo $form->textField($model,'environment'); ?>
		<?php echo $form->error($model,'environment'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'food'); ?>
		<?php echo $form->textField($model,'food'); ?>
		<?php echo $form->error($model,'food'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'health'); ?>
		<?php echo $form->textField($model,'health'); ?>
		<?php echo $form->error($model,'health'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'housingAndHomelessness'); ?>
		<?php echo $form->textField($model,'housingAndHomelessness'); ?>
		<?php echo $form->error($model,'housingAndHomelessness'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'humanRights'); ?>
		<?php echo $form->textField($model,'humanRights'); ?>
		<?php echo $form->error($model,'humanRights'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'humanitarianRelief'); ?>
		<?php echo $form->textField($model,'humanitarianRelief'); ?>
		<?php echo $form->error($model,'humanitarianRelief'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'internationalAffairs'); ?>
		<?php echo $form->textField($model,'internationalAffairs'); ?>
		<?php echo $form->error($model,'internationalAffairs'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'media'); ?>
		<?php echo $form->textField($model,'media'); ?>
		<?php echo $form->error($model,'media'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'povertyAlleviation'); ?>
		<?php echo $form->textField($model,'povertyAlleviation'); ?>
		<?php echo $form->error($model,'povertyAlleviation'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'religion'); ?>
		<?php echo $form->textField($model,'religion'); ?>
		<?php echo $form->error($model,'religion'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'scienceAndTechnology'); ?>
		<?php echo $form->textField($model,'scienceAndTechnology'); ?>
		<?php echo $form->error($model,'scienceAndTechnology'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'seniorCitizens'); ?>
		<?php echo $form->textField($model,'seniorCitizens'); ?>
		<?php echo $form->error($model,'seniorCitizens'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'womensIssues'); ?>
		<?php echo $form->textField($model,'womensIssues'); ?>
		<?php echo $form->error($model,'womensIssues'); ?>
	</div>

	<div class="row">
		<?php echo $form->labelEx($model,'other'); ?>
		<?php echo $form->textField($model,'other',array('size'=>60,'maxlength'=>255)); ?>
		<?php echo $form->error($model,'other'); ?>
	</div>

	<div class="row buttons">
		<?php echo CHtml::submitButton($model->isNewRecord ? 'Create' : 'Save'); ?>
	</div>

<?php $this->endWidget(); ?>

</div><!-- form -->