<!-- IMPORT partials/breadcrumbs.tpl -->
<div data-widget-area="header">
	{{{each widgets.header}}}
	{{widgets.header.html}}
	{{{end}}}
</div>

<div class="container-wotw">
	<div class="sidebar-wotw">
		<div class="carte paypal">
			<a class="image-miniature" href="https://www.paypal.me/writersofthewind" target="_blank">
					<ul class="carte-list">
							<li class="carte-link">
									<h4 class="carte-title">Donation</h4>
									<p class="carte-subtitle">Le soutien gorge du forum</p>
							</li>
					</ul>
			</a>
		</div>
		<div class="sidebar-card">
			<h4 class="sidebar-title">Catégories</h4>
			<p class="sidebar-subtitle">thème ou thème pas</p>
		</div>
		<div class="carte games">
				<a class="image-miniature" href="/category/2/jeux-vidéos">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Jeux vidéos</h4>
										<p class="carte-subtitle">tu aimes te toucher la manette ?</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte lounge">
				<a class="image-miniature" href="/category/5/le-lounge">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Le Lounge</h4>
										<p class="carte-subtitle">le coin pour tailler la buvette</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte loungeVIP">
				<a class="image-miniature" href="/category/7/le-lounge-vip">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Le Lounge VIP</h4>
										<p class="carte-subtitle">messes basses, complots et confidences</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte geek">
				<a class="image-miniature" href="/category/16/homo-homo-geekus">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Homo Geekus</h4>
										<p class="carte-subtitle">l’informaticien dans toute sa splendeur</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte TVShows">
				<a class="image-miniature" href="/category/3/séries-télévisées">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Séries TV</h4>
										<p class="carte-subtitle">se culturer jusqu’à l’abrutissement</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte movies">
				<a class="image-miniature" href="/category/8/cinéma">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Cinéma</h4>
										<p class="carte-subtitle">le 7ème art vu au 2ème degré</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte books">
				<a class="image-miniature" href="/category/11/bouquins">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Bouquins</h4>
										<p class="carte-subtitle">lire c'est pas que pour les cons</p>
								</li>
						</ul>
				</a>
		</div>
		<div class="carte music">
				<a class="image-miniature" href="/category/12/musique">
						<ul class="carte-list">
								<li class="carte-link">
										<h4 class="carte-title">Musique</h4>
										<p class="carte-subtitle">boum ssch tchaka aaaah</p>
								</li>
						</ul>
				</a>
		</div>
</div>
	<div class="recent">
		<div class="btn-toolbar">
			<div class="pull-left">
				<!-- IF canPost -->
				<!-- IMPORT partials/buttons/newTopic.tpl -->
				<!-- ELSE -->
				<a component="category/post/guest" href="{config.relative_path}/login" class="btn btn-primary">[[category:guest-login-post]]</a>
				<!-- ENDIF canPost -->
				<a href="{config.relative_path}/{selectedFilter.url}" class="inline-block">
					<div class="alert alert-warning hide" id="new-topics-alert"></div>
				</a>
			</div>

			<!-- IMPORT partials/category-filter.tpl -->

			<div class="btn-group pull-right bottom-sheet <!-- IF !filters.length -->hidden<!-- ENDIF !filters.length -->">
				<button type="button" class="btn btn-default dropdown-toggle" data-toggle="dropdown">
				{selectedFilter.name} <span class="caret"></span>
				</button>
				<ul class="dropdown-menu" role="menu">
					{{{each filters}}}
					<li role="presentation" class="category">
						<a role="menu-item" href="{config.relative_path}/{filters.url}"><i class="fa fa-fw <!-- IF filters.selected -->fa-check<!-- ENDIF filters.selected -->"></i>{filters.name}</a>
					</li>
					{{{end}}}
				</ul>
			</div>
		</div>

		<hr class="hidden-xs"/>

		<div class="category">
			<!-- IF !topics.length -->
			<div class="alert alert-warning" id="category-no-topics">[[recent:no_recent_topics]]</div>
			<!-- ENDIF !topics.length -->

			<!-- IMPORT partials/topics_list.tpl -->

			<!-- IF config.usePagination -->
				<!-- IMPORT partials/paginator.tpl -->
			<!-- ENDIF config.usePagination -->
		</div>
	</div>
</div>
