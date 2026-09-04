.class public Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;
.super Ljava/lang/Object;
.source "NtUserDefaultsConstants.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/NtUserDefaultsConstants;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DefValues"
.end annotation


# static fields
.field public static final AOSAGI_VERSION:I = 0x4

.field public static final BARHOVER_PALLET_OPEN:Z = true

.field public static final COLLABO_PROXY_SETTING_PORT:I = 0x0

.field public static final COLLABO_PROXY_SETTING_REQUIRE_AUTH:Z = false

.field public static final COLLABO_PROXY_SETTING_USE_PROXY:Z = false

.field public static final COMMAND_BUTTONS:I = 0x1

.field public static final CURRENT_DM_VERSION:I = 0x4

.field public static final CURRENT_LIBRARY_BGIMAGE_VERSION:I = 0x7

.field public static final CURRENT_LIBRARY_ITEM_VERSION:I = 0x4

.field public static final CURRENT_LIBRARY_SHEET_TEMPLATE_VERSION:I = 0x6

.field public static final CURRENT_STARTGUIDE_VERSION:I = 0x6

.field public static final CURRENT_VERSION:I = 0x6

.field public static final DEFAULT_COLLABO_DISP_LOGIN_MESSAGE:Z = true

.field public static final DEFAULT_COLLABO_DISP_MEMBER_INOUT:Z = false

.field public static final DEFAULT_COLLABO_DISP_PRIVATEMODE_TYPE:Z = true

.field public static final DEFAULT_COLLABO_GUIDANCE_BAR_CLOSE:Z = false

.field public static final DEFAULT_COLLABO_LOG_MODE_INTERVAL:I = 0x2

.field public static final DEFAULT_COLLABO_OPEN_IN_PRIVATEMODE:Z = false

.field public static final DEFAULT_COLLABO_SLEEP_MODE:Z = true

.field public static final DEFAULT_DETAILWINDOW_BUTTON_VISIBLE:Z = false

.field public static final DEFAULT_JUMP_ENABLED:Z = false

.field public static final DEFAULT_KEY_LOCATION_SETTING_ASPECT:I = 0x0

.field public static final DEFAULT_MONITORING_DISPLAY_TYPE:I = 0x0

.field public static final DEFAULT_SCHOOL_DEFAULT_SCHOOL_PAGE_TYPE:I = 0x1

.field public static final DEFAULT_SCHOOL_MONITORING_OFFLINEUSER_MODE:I = 0x1

.field public static final DEFAULT_SCHOOL_MONITORING_VISIBLE_STUDENT_NAME:Z = true

.field public static final DEFAULT_SCHOOL_SCORELIST_AUTORELOAD:Z = true

.field public static final DEFAULT_SHAPE_PEN_MODE:Z = false

.field public static final DEFAULT_VC_RECORDING_INPUT_GAIN:F = 2.0f

.field public static final DEFAULT_VC_RECORDING_SAMPLING_RATE:F = 11025.0f

.field public static final DEFAULT_VIDEO_PLAYER_SHOW_THUMBNAILS:Z = true

.field public static final DEFAULT_WRISTGUARD_BUTTON_VISIBLE:Z = false

.field public static final DRAW_LONGPRESS_JUDGE:Z = true

.field public static final DRAW_LONGPRESS_TIME:F = 0.5f

.field public static final DUNGEON_MAP_POS:I = 0x0

.field public static final DUNGEON_MAP_STATE:Z = true

.field public static final GENERATE_HD_IMAGE:Z = true

.field public static final HIDE_WAIT_INDICATOR:Z = false

.field public static final HISTORY_BAR_SHOW:Z = false

.field public static final LASERPOINTER_COLOR:I

.field public static final LASERPOINTER_THICKNESS:F = 10.0f

.field public static final ONETAPSCROLLER:Z = true

.field public static final ONETAPSCROLLER_DISPLAYDELAY:F = 0.1f

.field public static final ONETAPSCROLLER_LOCATION:I = 0x0

.field public static final OWL_VERSION:I = 0x6

.field public static final PAINT_RESPONSE:I = 0x0

.field public static final PAN_BY_FINGER:Z = false

.field public static final PREOWL_VERSION:I = 0x5

.field public static final RUBBERBANDKIND_INDEX:I = 0x0

.field public static final SAVE_CAMERAROLL:Z = true


# direct methods
.method static constructor <clinit>()V
    .locals 3

    const/16 v0, 0xfb

    const/4 v1, 0x0

    const/16 v2, 0xff

    .line 1381
    invoke-static {v2, v0, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result v0

    sput v0, Lcom/metamoji/nt/NtUserDefaultsConstants$DefValues;->LASERPOINTER_COLOR:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
