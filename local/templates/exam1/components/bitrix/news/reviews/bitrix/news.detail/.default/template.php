<? if (!defined("B_PROLOG_INCLUDED") || B_PROLOG_INCLUDED !== true) die();
/** @var array $arParams */
/** @var array $arResult */
/** @global CMain $APPLICATION */
/** @global CUser $USER */
/** @global CDatabase $DB */
/** @var CBitrixComponentTemplate $this */
/** @var string $templateName */
/** @var string $templateFile */
/** @var string $templateFolder */
/** @var string $componentPath */
/** @var CBitrixComponent $component */
$this->setFrameMode(true);
?>
    <hr>
    <div class="review-block">
        <div class="review-text">
            <div class="review-text-cont">
                <? echo $arResult['DETAIL_TEXT']; ?>
            </div>
            <div class="review-autor">
                <?= $arResult['NAME'] ?>, <?= $arResult['DISPLAY_ACTIVE_FROM'] ?>
                г., <?= $arResult['PROPERTIES']['POSITION']['VALUE'] ?>
                , <?= $arResult['PROPERTIES']['COMPANY']['VALUE'] ?>.
            </div>
        </div>
        <div style="clear: both;" class="review-img-wrap">
        <? if (empty($arResult['DETAIL_PICTURE']['SRC'])): //img?>
            <img src="<?= SITE_TEMPLATE_PATH . '/img/rew/no_photo.jpg' ?>" alt="img"/>
        <? else: //is img set?>
            <img src="<?=$arResult['DETAIL_PICTURE']['SRC']?>" alt="img"/>
        <? endif; //img?>
        </div>
    </div>
<? if (!empty($arResult['PROPERTIES']['DOCS']['VALUE']) and $arResult['PROPERTIES']['DOCS']['PROPERTY_TYPE'] == 'F'): //docs?>
    <div class="exam-review-doc">
        <p><?= $arResult['PROPERTIES']['DOCS']['NAME'] ?>:</p>
        <? if ($arResult['PROPERTIES']['DOCS']['MULTIPLE'] == 'Y'): //is more docs?>
            <? foreach ($arResult['PROPERTIES']['DOCS']['VALUE'] as $file_id): ?>
                <? $file = CFile::GetFileArray($file_id) ?>
                <div class="exam-review-item-doc"><img class="rew-doc-ico"
                                                       src="<?= SITE_TEMPLATE_PATH . '/img/icons/pdf_ico_40.png' ?>"><a
                            href="<?= $file['SRC'] ?>"><?= $file['ORIGINAL_NAME'] ?></a>
                </div>
            <? endforeach; ?>
        <? else: //is one docs?>
            <? $file = CFile::GetFileArray($arResult['PROPERTIES']['DOCS']['VALUE']) ?>
            <div class="exam-review-item-doc"><img class="rew-doc-ico"
                                                   src="<?= SITE_TEMPLATE_PATH . '/img/icons/pdf_ico_40.png' ?>"><a
                        href="<?= $file['SRC'] ?>"><?= $file['ORIGINAL_NAME'] ?></a>
            </div>
        <? endif; //is more docs end?>
    </div>
<? endif; //docs?>
    <hr>
<? if (array_key_exists("USE_SHARE", $arParams) && $arParams['USE_SHARE'] == "Y"): //back_link?>
    <div class="news-detail-share">
        <noindex>
            <?
            $APPLICATION->IncludeComponent("bitrix:main.share", "", array(
                "HANDLERS" => $arParams['SHARE_HANDLERS'],
                "PAGE_URL" => $arResult['~DETAIL_PAGE_URL'],
                "PAGE_TITLE" => $arResult['~NAME'],
                "SHORTEN_URL_LOGIN" => $arParams['SHARE_SHORTEN_URL_LOGIN'],
                "SHORTEN_URL_KEY" => $arParams['SHARE_SHORTEN_URL_KEY'],
                "HIDE" => $arParams['SHARE_HIDE'],
            ),
                $component,
                array("HIDE_ICONS" => "Y")
            );
            ?>
        </noindex>
    </div>
<? endif //back_link?>