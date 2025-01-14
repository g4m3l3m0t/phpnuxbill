{include file="sections/header.tpl"}

<div class="row">
    <div class="col-sm-12">
        <div class="panel panel-hovered mb20 panel-primary">
            <div class="panel-heading">{$_L['Manage_Accounts']}</div>
            <div class="panel-body">
                <div class="md-whiteframe-z1 mb20 text-center" style="padding: 15px">
                    <div class="col-md-8">
                        <form id="site-search" method="post" action="{$_url}customers/list/">
                            <div class="input-group">
                                <div class="input-group-addon no-border">
                                    <select name="what">
                                        <option value="username" {if $what=='username'}selected{/if}>Username</option>
                                        <option value="fullname" {if $what=='fullname'}selected{/if}>Name</option>
                                        <option value="phonenumber" {if $what=='phonenumber'}selected{/if}>Phone</option>
                                        <option value="email" {if $what=='email'}selected{/if}>Email</option>
                                    </select>
                                </div>
                                <input type="text" name="search" value="{$search}" class="form-control"
                                    placeholder="{$_L['Search_by_Username']}...">
                                    <div class="input-group-btn">
                                        <button class="btn btn-success" type="submit"><span class="fa fa-search"></span></button>
                                    </div>
                            </div>
                        </form>
                    </div>
                    <div class="col-md-4">
                        <a href="{$_url}customers/add" class="btn btn-primary btn-block waves-effect"><i
                                class="ion ion-android-add"> </i> {$_L['Add_Contact']}</a>
                    </div>&nbsp;
                </div>
                <div class="table-responsive">
                    <table class="table table-bordered table-striped">
                        <thead>
                            <tr>
                                <th>{$_L['Username']}</th>
                                <th>{$_L['Full_Name']}</th>
                                <th>{Lang::T('Balance')}</th>
                                <th>{$_L['Phone_Number']}</th>
                                <th>{$_L['Email']}</th>
                                <th>{$_L['Created_On']}</th>
                                <th>{$_L['Recharge']}</th>
                                <th>{$_L['Manage']}</th>
                            </tr>
                        </thead>
                        <tbody>
                            {foreach $d as $ds}
                                <tr>
                                    <td>{$ds['username']}</td>
                                    <td>{$ds['fullname']}</td>
                                    <td>{Lang::moneyFormat($ds['balance'])}</td>
                                    <td>{$ds['phonenumber']}</td>
                                    <td>{$ds['email']}</td>
                                    <td>{$ds['created_at']}</td>
                                    <td align="center"><a href="{$_url}prepaid/recharge-user/{$ds['id']}" id="{$ds['id']}"
                                            class="btn btn-primary btn-sm">{$_L['Recharge']}</a></td>
                                    <td align="center">
                                        <a href="{$_url}customers/edit/{$ds['id']}"
                                            class="btn btn-warning btn-sm">{$_L['Edit']}</a>
                                        <a href="{$_url}customers/delete/{$ds['id']}" id="{$ds['id']}"
                                            class="btn btn-danger btn-sm"
                                            onclick="return confirm('{$_L['Delete']}?')">{$_L['Delete']}</a>
                                    </td>
                                </tr>
                            {/foreach}
                        </tbody>
                    </table>
                </div>
                {$paginator['contents']}
            </div>
        </div>
    </div>
</div>

{include file="sections/footer.tpl"}