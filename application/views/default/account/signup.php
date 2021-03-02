<div class="row">
    <div class="col-md-12">
        <h3>Создание аккаунта</h3>
        <p class="alert bg-info">Нет профиля? Ничего страшного. Зарегистрируйтесь ниже. Это займет несколько минут.</p>
        <form method="post" action="<?php echo base_url('account/signup'); ?>">
            <div class="form-group">
                <label for="signup_email">Email</label>
                <input type="email" name="email" id="signup_email" placeholder="Корректный email" class="form-control" />
            </div>
            <button type="submit" class="btn btn-primary">Зарегистрироваться</button>
        </form>
    </div>
</div>