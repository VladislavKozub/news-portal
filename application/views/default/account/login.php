<div class="row">
    <div class="col-md-6">
        <form method="post" action="<?php echo base_url('account/login'); ?>">
            <h3>Войти в аккаунт</h3>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" name="email" id="email" placeholder="Email" class="form-control" />
            </div>
            <div class="form-group">
                <label for="password">Пароль</label>
                <input type="password" name="password" id="password" placeholder="Пароль" class="form-control" />
            </div>
            <button type="suubmit" class="btn btn-primary">Вход</button> <a href="<?php echo base_url('account/retrieve'); ?>">Забыли пароль?</a>
        </form>
    </div>
    <div class="col-md-6">
        <h3>Создать аккаунт</h3>
        <p class="alert bg-info">У вас нет аккаунта? Зарегистрируйтесь ниже.</p>
        <form method="post" action="<?php echo base_url('account/signup'); ?>" class="form-inline">
            <div class="form-group">
                <label for="signup_email">Email</label>
                <input type="email" name="email" id="signup_email" placeholder="Корректный email" class="form-control" />
            </div>
            <button type="submit" class="btn btn-success">Зарегистрироваться</button>
        </form>
    </div>
</div>