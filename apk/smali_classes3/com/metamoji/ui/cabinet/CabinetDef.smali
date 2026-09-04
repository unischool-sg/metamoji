.class public final Lcom/metamoji/ui/cabinet/CabinetDef;
.super Ljava/lang/Object;
.source "CabinetDef.java"


# static fields
.field static final COM_MAX_DOCUMENT_TITLE_LENGTH:I = 0x40

.field public static final CON_SYNC_ON_IDLE_CHECK_DURATION_SPAN:I = 0x2710

.field public static final CabinetTagColorBlue:I = 0x3

.field public static final CabinetTagColorBlueGrey:I = 0x9

.field public static final CabinetTagColorEmerald:I = 0x5

.field public static final CabinetTagColorGreen:I = 0x6

.field public static final CabinetTagColorGrey:I = 0x8

.field public static final CabinetTagColorNum:I = 0xa

.field public static final CabinetTagColorPink:I = 0x1

.field public static final CabinetTagColorPurple:I = 0x2

.field public static final CabinetTagColorRed:I = 0x0

.field public static final CabinetTagColorSky:I = 0x4

.field public static final CabinetTagColorbrown:I = 0x7

.field static final DETAIL_DATE_TEXT_RIGHT_PADDING:I

.field static final DETAIL_DATE_TEXT_TOP_PADDING:I

.field static final DETAIL_DATE_TEXT_WIDTH:I

.field public static final DETAIL_ITEM_WIDTH:I

.field static final DETAIL_THMBNAIL_H_PADDING:I

.field static final DETAIL_THMBNAIL_V_PADDING:I

.field static final DETAIL_THUMBNAIL_HEIGHT:I

.field static final DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

.field static final DETAIL_THUMBNAIL_WIDTH:I

.field static final DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

.field static final DETAIL_VIEW_SMALL_TAG_COUNT:I = 0xc

.field static final DETAIL_VIEW_TAG_COUNT:I = 0x5

.field public static final FOLDER_PATH_ICON_SIZE:I

.field public static final FOLDER_PATH_PADDING_SIZE:I

.field public static final FOLDER_PATH_TEXT_WIDTH:I

.field public static final FOLDER_TREE_DUMY_VIEW_SIZE:I

.field static final FOLDER_TREE_ICON_BADGE_SHADOW:I

.field static final FOLDER_TREE_ICON_BADGE_SIZE:I

.field static final FOLDER_TREE_ICON_BADGE_TEXT_SIZE:I

.field static final FOLDER_TREE_ICON_BADGE_TEXT_X:I

.field static final FOLDER_TREE_ICON_BADGE_TEXT_X2:I

.field static final FOLDER_TREE_ICON_BADGE_TEXT_Y:I

.field static final FOLDER_TREE_ICON_BADGE_X:I

.field static final FOLDER_TREE_ICON_BADGE_Y:I

.field static final FOLDER_TREE_ICON_SIZE:I

.field static final FOLDER_TREE_INDENT_WIDTH:I

.field public static final FOLDER_TREE_VIEW_HEIGHT:I

.field public static final JUDGE_DRAG_MOVE_POINT:I

.field static final NORMAL_SELECTOR_WIDTH:I

.field static final NORMAL_THUMBNAIL_HIGHT:I

.field public static final NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

.field static final NORMAL_THUMBNAIL_WIDTH:I

.field public static final NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

.field static final NORMAL_VIEW_LAND_COLUMNS:I = 0x3

.field static final NORMAL_VIEW_LAND_COLUMNS_TABLET:I = 0x4

.field static final NORMAL_VIEW_PORT_COLUMNS:I = 0x2

.field static final NORMAL_VIEW_SMALL_TAG_COUNT:I = 0x5

.field static final ON_TOUCH_MARGIN:I

.field public static final PAGE_THUMBNAIL_ICON_REAL_SIZE:I

.field public static final PAGE_THUMBNAIL_ICON_SIZE:I

.field public static final PAGE_THUMBNAIL_PAGENUMBER_TOP_MARGIN:I

.field public static final SCROLL_SPEED_FAST:I = 0x19

.field public static final SCROLL_SPEED_SLOW:I = 0x8

.field public static final SEPARATOR_SWIPE_MAX_OFF_PATH:I

.field public static final SEPARATOR_SWIPE_MIN_DISTANCE:I

.field public static final SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

.field public static final SIMPLE_MODE_TITLE_WIDTH:I

.field public static final SIMPLE_MODE_TITLE_WIDTH_FULL_LANDSCAPE:I

.field public static final SIMPLE_MODE_TITLE_WIDTH_FULL_PORTRAIT:I

.field public static final SIMPLE_MODE_TITLE_WIDTH_LANDSCAPE:I

.field public static final SIMPLE_MODE_TITLE_WIDTH_PORTRAIT:I

.field static final SMALL_TAG_PADDING:I

.field static final SMALL_TAG_WIDTH:I

.field public static final TAG_HEIGHT:I

.field public static final TAG_LIST_ICON_SIZE:I

.field public static final TAG_LIST_LABEL_PADDING_SIZE:I

.field public static final TAG_LIST_PADDING_SIZE:I

.field public static final TAG_WIDTH:I

.field public static final THUMBS_VIEW_SCROLL_MARGIN:I

.field public static final THUMB_VIEW_ARRANGE_POSITION_Y:I

.field public static final THUMB_VIEW_BETWEEN_THUMBS_AND_GRIP:I

.field public static final THUMB_VIEW_MARGIN:I

.field public static final THUMB_VIEW_PAGE_MARGIN:I

.field public static final THUMB_VIEW_TOP_MARGIN:I

.field static final TREE_VIEW_WIDTH_MARGIN:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 62
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalSelectorWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_SELECTOR_WIDTH:I

    .line 67
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalThumbnailWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH:I

    .line 71
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalThumbnailHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT:I

    .line 75
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalThumbnailWidthExcludeShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    .line 79
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetNormalThumbnailHeightExcludeShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->NORMAL_THUMBNAIL_HIGHT_EXCLUDE_SHADOW:I

    .line 84
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetOnTouchMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->ON_TOUCH_MARGIN:I

    .line 94
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailDateTextWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_DATE_TEXT_WIDTH:I

    .line 99
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailDateTextTopPadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_DATE_TEXT_TOP_PADDING:I

    .line 104
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailDateTextRightPadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_DATE_TEXT_RIGHT_PADDING:I

    .line 109
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetSmallTagWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SMALL_TAG_WIDTH:I

    .line 114
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetSmallTagPadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SMALL_TAG_PADDING:I

    .line 119
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailVPadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THMBNAIL_V_PADDING:I

    .line 124
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailHPadding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THMBNAIL_H_PADDING:I

    .line 129
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT:I

    .line 134
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH:I

    .line 139
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailHeightExcludeShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_HEIGHT_EXCLUDE_SHADOW:I

    .line 144
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailThumbnailWidthExcludeShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_THUMBNAIL_WIDTH_EXCLUDE_SHADOW:I

    .line 149
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderPathIconSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_ICON_SIZE:I

    .line 154
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderPathTextWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_TEXT_WIDTH:I

    .line 159
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderPathPaddingSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_PATH_PADDING_SIZE:I

    .line 164
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_VIEW_HEIGHT:I

    .line 169
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeDumySize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_DUMY_VIEW_SIZE:I

    .line 174
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_SIZE:I

    .line 179
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SIZE:I

    .line 184
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_X:I

    .line 189
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_Y:I

    .line 194
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeTextSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_SIZE:I

    .line 199
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeTextX:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_X:I

    .line 204
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeTextX2:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_X2:I

    .line 209
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeTextY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_TEXT_Y:I

    .line 214
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIconBadgeShadow:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_ICON_BADGE_SHADOW:I

    .line 219
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeIndentWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->FOLDER_TREE_INDENT_WIDTH:I

    .line 224
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetSeparatorSwipMinDistance:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MIN_DISTANCE:I

    .line 229
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetSeparatorSwipMaxOffPath:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_MAX_OFF_PATH:I

    .line 234
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetSeparatorSwipThresholdVelocity:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SEPARATOR_SWIPE_THRESHOLD_VELOCITY:I

    .line 239
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetFolderTreeViewMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TREE_VIEW_WIDTH_MARGIN:I

    .line 244
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetTagListIconSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_ICON_SIZE:I

    .line 249
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetTagListPaddingSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_PADDING_SIZE:I

    .line 254
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetTagListLabelPaddingSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_LIST_LABEL_PADDING_SIZE:I

    .line 260
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewIconSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->PAGE_THUMBNAIL_ICON_SIZE:I

    .line 265
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewIconRealSize:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->PAGE_THUMBNAIL_ICON_REAL_SIZE:I

    .line 271
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewBetweenThumbsAndGrip:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMB_VIEW_BETWEEN_THUMBS_AND_GRIP:I

    .line 277
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbPageNumTopMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->PAGE_THUMBNAIL_PAGENUMBER_TOP_MARGIN:I

    .line 283
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewArrangePositionY:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMB_VIEW_ARRANGE_POSITION_Y:I

    .line 289
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMB_VIEW_MARGIN:I

    .line 295
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewTopMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMB_VIEW_TOP_MARGIN:I

    .line 301
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->ThumbViewPageMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMB_VIEW_PAGE_MARGIN:I

    .line 307
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetDetailItemWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->DETAIL_ITEM_WIDTH:I

    .line 313
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetTagWidth:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_WIDTH:I

    .line 318
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetTagHeight:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->TAG_HEIGHT:I

    .line 323
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->cabinetThumbsViewScrollMargin:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->THUMBS_VIEW_SCROLL_MARGIN:I

    .line 329
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->SimpleModeColumnWidth_Title:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH:I

    .line 334
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->SimpleModeColumnWidth_Title_Full_Portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_FULL_PORTRAIT:I

    .line 339
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->SimpleModeColumnWidth_Title_Full_Landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_FULL_LANDSCAPE:I

    .line 344
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->SimpleModeColumnWidth_Title_Portrait:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_PORTRAIT:I

    .line 349
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->SimpleModeColumnWidth_Title_Landscape:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->SIMPLE_MODE_TITLE_WIDTH_LANDSCAPE:I

    .line 354
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/metamoji/noteanytime/R$dimen;->JudgeDragMovePoint:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    sput v0, Lcom/metamoji/ui/cabinet/CabinetDef;->JUDGE_DRAG_MOVE_POINT:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
