<#import "parts/common.ftl" as c>

<@c.page>
<h5>${username}</h5>
    ${message!}

<form method="post">

    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Password :</label>
        <div class="col-sm-5">
            <input type="password" name="password" class="form-control" placeholder="password"/>
        </div>
    </div>
    <div class="form-group row">
        <label class="col-sm-2 col-form-label">Email:</label>
        <div class="col-sm-5">
            <input type="email" name="email" class="form-control" placeholder="example@mail.ua" value="${email!''}"/>
        </div>
    </div>

    <input type="hidden" name="_csrf" value="${_csrf.token}"/>

    <button class="btn btn-primary" type="submit">Save</button>
</form>

</@c.page>