<!-- Modal -->
<div class="modal fade" id="LoginModel" tabindex="-1" aria-labelledby="LoginModelLabel" aria-hidden="true">
    <div class="modal-dialog">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="LoginModelLabel">Login</h5>
                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
            </div>
            <form action="./partials/_handleLogin.php" method="POST">
                <div class="modal-body">

                    <div class="mb-3">
                        <label for="exampleInputEmail1" class="form-label">Email address</label>
                        <input type="email" class="form-control" id="exampleInputEmail1" name="loginEmail"
                            aria-describedby="emailHelp">
                        <div id="emailHelp" class="form-text">We'll never share your email with anyone else.</div>
                    </div>
                    <div class="mb-3">
                        <label for="exampleInputPassword1" class="form-label">Password</label>
                        <input type="password" name="loginPass" class="form-control" id="password">
                    </div>
                    <button type="submit" class="btn btn-primary">Submit</button>

                </div>

                <form>
        </div>
    </div>
</div>