{include file="sections/header.tpl"}

		<div class="row">
			<div class="col-sm-12 col-md-12">
				<div class="panel panel-primary panel-hovered panel-stacked mb30">
					<div class="panel-heading">{$_L['Edit_Plan']}</div>
						<div class="panel-body">
						<form class="form-horizontal" method="post" role="form" action="{$_url}services/edit-pppoe-post">
							<input type="hidden" name="id" value="{$d['id']}">
                            <div class="form-group">
                                <label class="col-md-2 control-label">{Lang::T('Status')}</label>
                                <div class="col-md-10">
                                    <label class="radio-inline warning">
                                        <input type="radio" {if $d['enabled'] == 1}checked{/if} name="enabled" value="1"> Enable
                                    </label>
                                    <label class="radio-inline">
                                        <input type="radio" {if $d['enabled'] == 0}checked{/if} name="enabled" value="0"> Disable
                                    </label>
                                </div>
                            </div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Plan_Name']}</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="name_plan" maxlength="40" name="name_plan" value="{$d['name_plan']}">
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['BW_Name']}</label>
								<div class="col-md-6">
									<select id="id_bw" name="id_bw" class="form-control select2">
										{foreach $b as $bs}
											<option value="{$bs['id']}" {if $d['id_bw'] eq $bs['id']} selected {/if}>{$bs['name_bw']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Plan_Price']}</label>
								<div class="col-md-6">
                                    <div class="input-group">
                                        <span class="input-group-addon">{$_c['currency_code']}</span>
                                        <input type="number" class="form-control" name="price" required value="{$d['price']}">
                                    </div>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Plan_Validity']}</label>
								<div class="col-md-4">
									<input type="text" class="form-control" id="validity" name="validity" value="{$d['validity']}">
								</div>
								<div class="col-md-2">
									<select class="form-control" id="validity_unit" name="validity_unit">
										<option value="Mins" {if $d['validity_unit'] eq 'Mins'} selected {/if}>{$_L['Mins']}</option>
										<option value="Hrs" {if $d['validity_unit'] eq 'Hrs'} selected {/if}>{$_L['Hrs']}</option>
										<option value="Days" {if $d['validity_unit'] eq 'Days'} selected {/if}>{$_L['Days']}</option>
										<option value="Months" {if $d['validity_unit'] eq 'Months'} selected {/if}>{$_L['Months']}</option>
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Pool']}</label>
								<div class="col-md-6">
									<select id="pool_name" name="pool_name" class="form-control select2">
										{foreach $p as $ps}
											<option value="{$ps['pool_name']}" {if $d['pool_name'] eq $ps['pool_name']} selected {/if}>{$ps['pool_name']}</option>
										{/foreach}
									</select>
								</div>
							</div>
							<div class="form-group">
								<label class="col-md-2 control-label">{$_L['Router_Name']}</label>
								<div class="col-md-6">
									<input type="text" class="form-control" id="routers" name="routers" value="{$d['routers']}" readonly>
								</div>
							</div>

							<div class="form-group">
								<div class="col-lg-offset-2 col-lg-10">
									<button class="btn btn-success waves-effect waves-light" type="submit">{$_L['Save']}</button>
									Or <a href="{$_url}services/pppoe">{$_L['Cancel']}</a>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>

{include file="sections/footer.tpl"}
