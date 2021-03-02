<div class="row">
	<div class="col-md-12">
		<h3>Добавить пост</h3>
		<form method="post" action="<?php echo base_url('post/add'); ?>" enctype="multipart/form-data">
			<div class="form-group">
				<label for="title">Заголовок</label>
				<input type="text" name="title" id="title" placeholder="Заголовок новости" value="<?php echo set_value('title'); ?>" class="form-control" />
			</div>
			<div class="form-group">
				<label for="category">Категория</label>
				<select name="category" id="category" class="form-control">
					<?php foreach($data['categories'] as $category): ?>
						<option value="<?php echo $category->idcategory; ?>" <?php echo set_select('category', $category->idcategory); ?>><?php echo $category->title; ?></option>
					<?php endforeach; ?>
				</select>
			</div>
			<div class="form-group">
				<label for="image">Изображение</label>
				<input type="file" name="image" id="image" class="form-control" placeholder="Upload an image" />
			</div>

			<div class="form-group">
				<label for="body">Детали публикации</label>
				<textarea name="body" id="body" class="form-control" placeholder="Содержание новости. HTML разметка разрешена."><?php echo set_value('body'); ?></textarea>
			</div>

			<div class="form-group">
				<label for="tags">Теги</label>
				<input type="text" name="tags" id="tags" value="<?php echo set_value('tags'); ?>" class="form-control" placeholder="Теги разделенные запятыми" />
			</div>

			<button type="submit" class="btn btn-primary">Ок</button>
		</form>
	</div>
</div>