<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();
IncludeTemplateLangFile(__FILE__);
?>
<!DOCTYPE html>
<html lang="<?= LANGUAGE_ID ?>">

<head>
    <title><? $APPLICATION->ShowTitle() ?></title>
    <? $APPLICATION->ShowHead(); ?>
    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . '/css/reset.css') ?>
    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . '/css/style.css') ?>
    <? $APPLICATION->SetAdditionalCSS(SITE_TEMPLATE_PATH . '/css/owl.carousel.css') ?>
    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . '/js/jquery.min.js') ?>
    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . '/js/owl.carousel.min.js') ?>
    <? $APPLICATION->AddHeadScript(SITE_TEMPLATE_PATH . '/js/scripts.js') ?>
    <link rel="icon" type="image/vnd.microsoft.icon" href="<?= SITE_TEMPLATE_PATH . '/img/' ?>favicon.ico">
    <link rel="shortcut icon" href="<?= SITE_TEMPLATE_PATH . '/img/' ?>favicon.ico">
</head>

<body>
<? $APPLICATION->ShowPanel() ?>
<!-- wrap -->
<div class="wrap">
    <!-- header -->
    <header class="header">
        <div class="inner-wrap">
            <div class="logo-block"><a href="" class="logo">Мебельный магазин</a>
            </div>
            <div class="main-phone-block">
                <? if (localtime()[2] > 8 and localtime()[2] < 18): ?>
                    <a href="tel:84952128506" class="phone">8 (495) 212-85-06</a>
                <? else: ?>
                    <a href="mailto:store@store.ru" class="phone">store@store.ru</a>
                <? endif ?>
                <div class="shedule">время работы с 9-00 до 18-00</div>
            </div>
            <div class="actions-block">
                <form action="/" class="main-frm-search">
                    <input type="text" placeholder="Поиск">
                    <button type="submit"></button>
                </form>
                <?$APPLICATION->IncludeComponent(
	"bitrix:system.auth.form", 
	"demo", 
	array(
		"COMPONENT_TEMPLATE" => "demo",
		"REGISTER_URL" => "/login/",
		"FORGOT_PASSWORD_URL" => "/login/",
		"PROFILE_URL" => "/login/user.php",
		"SHOW_ERRORS" => "N"
	),
	false
);?>
            </div>
        </div>
    </header>
    <!-- /header -->
    <? $APPLICATION->IncludeComponent(
        "bitrix:menu",
        "top_horizontal_multilevel",
        Array(
            "ALLOW_MULTI_SELECT" => "N",
            "CHILD_MENU_TYPE" => "left",
            "DELAY" => "N",
            "MAX_LEVEL" => "3",
            "MENU_CACHE_GET_VARS" => array(0 => "",),
            "MENU_CACHE_TIME" => "3600000",
            "MENU_CACHE_TYPE" => "A",
            "MENU_CACHE_USE_GROUPS" => "Y",
            "ROOT_MENU_TYPE" => "top",
            "USE_EXT" => "Y"
        )
    ); ?>
    <? if ($APPLICATION->GetCurDir() != '/'): ?>
        <?$APPLICATION->IncludeComponent("bitrix:breadcrumb", "bread_crumb", Array(
            "PATH" => "",	// Путь, для которого будет построена навигационная цепочка (по умолчанию, текущий путь)
            "SITE_ID" => "s1",	// Cайт (устанавливается в случае многосайтовой версии, когда DOCUMENT_ROOT у сайтов разный)
            "START_FROM" => "0",	// Номер пункта, начиная с которого будет построена навигационная цепочка
        ),
            false
        );?>
    <? endif ?>
    <!-- page -->
    <div class="page">
        <!-- content box -->
        <div class="content-box">
            <!-- content -->
            <div class="content">
                <div class="cnt">
                    <? if ($APPLICATION->GetCurDir() != '/'): ?>
                        <header>
                            <h1><? $APPLICATION->ShowTitle(false) ?></h1>
                        </header>
                    <? endif ?>
                    <? if ($APPLICATION->GetCurDir() == '/'): ?>

                        <p>«Мебельная компания» осуществляет производство мебели на высококлассном оборудовании с
                            применением минимальной доли ручного труда, что позволяет обеспечить высокое качество нашей
                            продукции. Налажен производственный процесс как массового и индивидуального характера, что с
                            одной стороны позволяет обеспечить постоянную номенклатуру изделий и индивидуальный подход –
                            с другой.
                        </p>


                        <!-- index column -->
                        <div class="cnt-section index-column">
                            <div class="col-wrap">

                                <!-- main actions box -->
                                <div class="column main-actions-box">
                                    <div class="title-block">
                                        <h2>Новинки</h2>
                                        <hr>
                                    </div>
                                    <div class="items-wrap">
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title-block att">
                                                    Угловой диван!
                                                </div>
                                                <br>
                                                <div class="inner-block">
                                                    <a href="" class="photo-block">
                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new01.jpg" alt="">
                                                    </a>
                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим
                                                            выбором расцветок и фактур.</a>
                                                        <a href="" class="btn-arr"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title-block att">
                                                    Угловой диван!
                                                </div>
                                                <br>
                                                <div class="inner-block">
                                                    <a href="" class="photo-block">
                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new02.jpg" alt="">
                                                    </a>
                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим
                                                            выбором расцветок и фактур.</a>
                                                        <a href="" class="btn-arr"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title-block att">
                                                    Угловой диван!
                                                </div>
                                                <br>
                                                <div class="inner-block">
                                                    <a href="" class="photo-block">
                                                        <img src="<?= SITE_TEMPLATE_PATH ?>/img/new03.jpg" alt="">
                                                    </a>
                                                    <div class="text"><a href="">Угловой диван "Титаник", с большим
                                                            выбором расцветок и фактур.</a>
                                                        <a href="" class="btn-arr"></a>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="" class="btn-next">Все новинки</a>
                                </div>
                                <!-- /main actions box -->
                                <!-- main news box -->
                                <div class="column main-news-box">
                                    <div class="title-block">
                                        <h2>Новости</h2>
                                    </div>
                                    <hr>
                                    <div class="items-wrap">
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title"><a href="">29 августа 2012</a>
                                                </div>
                                                <div class="text"><a href="">Поступление лучших офисных кресел из
                                                        Германии </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title"><a href="">29 августа 2012</a>
                                                </div>
                                                <div class="text"><a href="">Мастер-класс дизайнеров из Италии для
                                                        производителей мебели </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title"><a href="">29 августа 2012</a>
                                                </div>
                                                <div class="text"><a href="">Поступление лучших офисных кресел из
                                                        Германии </a>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="item-wrap">
                                            <div class="item">
                                                <div class="title"><a href="">29 августа 2012</a>
                                                </div>
                                                <div class="text"><a href="">Наша дилерская сеть расширилась теперь
                                                        ассортимент наших товаров доступен в Казани </a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <a href="" class="btn-next">Все новости</a>
                                </div>
                                <!-- /main news box -->

                            </div>
                        </div>
                        <!-- /index column -->

                        <!-- afisha box -->
                        <div class="cnt-section afisha-box">
                            <div class="section-title-block">
                                <h2 class="second-ttile">Ближайшие мероприятия</h2>
                                <a href="" class="btn-next">все мероприятия</a>
                            </div>
                            <hr>
                            <div class="items-wrap">
                                <div class="item-wrap">
                                    <div class="item">
                                        <div class="title"><a href="">29 августа 2012, Москва</a>
                                        </div>
                                        <div class="text"><a href="">Семинар производителей мебели России и СНГ,
                                                Обсуждение тенденций.</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-wrap">
                                    <div class="item">
                                        <div class="title"><a href="">29 августа 2012, Москва</a>
                                        </div>
                                        <div class="text"><a href="">Открытие шоу-рума на Невском проспекте. Последние
                                                модели в большом ассортименте.</a>
                                        </div>
                                    </div>
                                </div>
                                <div class="item-wrap">
                                    <div class="item">
                                        <div class="title"><a href="">29 августа 2012, Москва</a>
                                        </div>
                                        <div class="text"><a href="">Открытие нового магазина в нашей дилерской
                                                сети.</a>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <!-- /afisha box -->
                    <? endif ?>

