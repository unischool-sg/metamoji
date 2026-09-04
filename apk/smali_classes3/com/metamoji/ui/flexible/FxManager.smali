.class public Lcom/metamoji/ui/flexible/FxManager;
.super Ljava/lang/Object;
.source "FxManager.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;,
        Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;,
        Lcom/metamoji/ui/flexible/FxManager$FxHelpId;,
        Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;
    }
.end annotation


# static fields
.field static _FxUiDefMenuData:[Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

.field static aboutmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static addmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static addmenu_forschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static addmenu_forschool_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static addpagemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static addvideomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static arrangectxmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetCommandMenuForBiz:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetCommandMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetCommandPhoneMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetCommandPhoneMenuForBiz:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetCommandPhoneMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetaddmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetaddmenu_readOnly:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetcommandmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetsearchmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static collaboContextMenuUserList:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static collabodistributemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static collabomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static collabomenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static def_PHOTO_CTX_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static def_SCHOOL_ATTENTION_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static drawcontextmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static flipunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static importfilemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static mainmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static mainmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static mainmenu_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns_phone_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns_phone_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static naviBarRightBtns_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_simple_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_student:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_student_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_teacher:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static navibar_btn_right_teacher_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static noteDriveMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static notemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static operationmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static ordermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static pageJumpMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static pageListMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static papermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static photomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field private static sTextContextAlign:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextBulletedlist:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextDeco:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextEdit:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextOther:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sTextContextVoice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static schoolBtnMenuEditlayer:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static schoolBtnMenuPageType:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static schoolBtnMenuTeacherMode:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static schoolPersonalModeMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sendmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static soundunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static surveyunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static videomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static voicePhoneMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static voicemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static zoommenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# instance fields
.field _activity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroidx/fragment/app/FragmentActivity;",
            ">;"
        }
    .end annotation
.end field

.field _barRightBtns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field _density:F

.field _displayManager:Landroid/hardware/display/DisplayManager;

.field _presentations:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/Presentation;",
            ">;"
        }
    .end annotation
.end field

.field _setScreenDisconnectNotification:Z

.field m_helpController:Lcom/metamoji/ui/help/HelpController;

.field m_uiPartList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/flexible/FxItem;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$mgetCommandManager(Lcom/metamoji/ui/flexible/FxManager;)Lcom/metamoji/nt/NtCommandManager;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 25

    const/16 v0, 0xc

    .line 214
    new-array v1, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SELECT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SELECTALL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_CUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_COPY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_PASTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x4

    aput-object v2, v1, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v8, 0x5

    aput-object v2, v1, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_DECO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v9, 0x6

    aput-object v2, v1, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v10, 0x7

    aput-object v2, v1, v10

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_BULLETEDLIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v11, 0x8

    aput-object v2, v1, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v12, 0x9

    aput-object v2, v1, v12

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_OTHER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v13, 0xa

    aput-object v2, v1, v13

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v14, 0xb

    aput-object v2, v1, v14

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 218
    new-array v1, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_CUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_COPY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_PASTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextEdit:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 219
    new-array v1, v13, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSTROKE_PEN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTFONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSIZE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTCOLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_BACKGROUNDCOLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTBOLD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTITALIC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNDERLINE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v10

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTSTRIKETROUGH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v12

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextDeco:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 222
    new-array v1, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_LEFT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_CENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextAlign:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 223
    new-array v1, v9, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_BULLETEDLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_NUMBEREDLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_DEMOTE_LISTLEVEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_PROMOTE_LISTLEVEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXT_REMOVE_LISTFORMAT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v8

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextBulletedlist:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 225
    new-array v1, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_PLAY_FROM_CREATE_TIME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_PLAY_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_ASSOCIATE_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_DETACH_TAG_SELECTED_OBJECTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextVoice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 230
    new-array v1, v14, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_REEDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_RECONVERT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_INSERTDATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_INSERTLINESEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNITSTYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTUNITSTYLE_TO_SYSTEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SEPARATE_TEXTUNIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_SHARE_OBJECT_INFO_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v10

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_WORDREGISTRATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_DISPLAY_QR_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v12

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v13

    sput-object v1, Lcom/metamoji/ui/flexible/FxManager;->sTextContextOther:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v1, 0x12

    .line 238
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COPY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PASTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPERATION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_TEXT_UNIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_TEXTUNIT_FOR_LABEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v10

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_PARTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v11

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_SHAPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v12

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v13

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_WEBIMAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v14

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v0

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v16, v13

    const/16 v13, 0xd

    aput-object v15, v2, v13

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MOVE_TO_SHARELAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v17, 0xe

    aput-object v15, v2, v17

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v18, v10

    const/16 v10, 0xf

    aput-object v15, v2, v10

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v19, 0x10

    aput-object v15, v2, v19

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v20, v12

    const/16 v12, 0x11

    aput-object v15, v2, v12

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->drawcontextmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 264
    new-array v2, v11, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_LEFT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_HORIZONTAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_TOP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v6

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_BOTOTM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v7

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_VERTICAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v8

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_HORIZONTAL_ADJUST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v9

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_VERTICAL_ADJUST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v18

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->ordermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 268
    new-array v2, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PLAY_FROM_AUTHOR_INFO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_PLAY_FROM_VOICE_TAG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_DETACH_VOICE_TAG_SELECTED_OBJECTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->voicemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 272
    new-array v2, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SHOW_PLAYLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_SHOW_WAVE_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_ADD_INDEX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->voicePhoneMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 276
    new-array v2, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_SEND_TO_APPLICATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_SAVE_TO_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->soundunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 280
    new-array v2, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_OVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v3

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_FLIP_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v4

    sget-object v15, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_SET_BACKGROUND_COLOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v15, v2, v5

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->flipunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 285
    new-array v2, v3, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->surveyunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v2, 0x13

    .line 296
    new-array v15, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_GROUPING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v3

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNGROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v4

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v5

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_SHAPE_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v6

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REVERSE_LEFT_AND_RIGHT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v7

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REVERSE_UPSIDE_AND_DOWNSIDE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v8

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_FRONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v9

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v18

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_BELOW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v11

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REGISTERMYITEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v20

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_STYLE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v16

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_STYLE_TO_SYSTEM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v14

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXTUNIT_COMBINE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v0

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_CONVERTTEXT_TOFONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v13

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_CONVERTTEXT_TOSTROKE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v17

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CHANGE_WEBPAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v10

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_OBJECT_INFO_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v19

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DISPLAY_QR_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v12

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_EDIT_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v1

    sput-object v15, Lcom/metamoji/ui/flexible/FxManager;->operationmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 319
    new-array v15, v4, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BACK_CABINET:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v3

    sput-object v15, Lcom/metamoji/ui/flexible/FxManager;->noteDriveMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 322
    new-array v15, v14, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NAVI_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v3

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v4

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v5

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEMPLATE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v6

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v7

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PDF_LOCATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v8

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v9

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v18

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v11

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v20

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v16

    sput-object v15, Lcom/metamoji/ui/flexible/FxManager;->mainmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 332
    new-array v15, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NAVI_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v3

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v4

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v5

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEMPLATE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v6

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v7

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PDF_LOCATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v8

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v9

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v18

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v11

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v20

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v16

    sget-object v21, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v21, v15, v14

    sput-object v15, Lcom/metamoji/ui/flexible/FxManager;->mainmenu_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v15, 0x14

    move/from16 v21, v2

    .line 343
    new-array v2, v15, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NAVI_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SUBMIT_BY_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT_FOR_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_ON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_OFF:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEMPLATE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PDF_LOCATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHOW_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v0

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v13

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v17

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v10

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v19

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOGOUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v12

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v1

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v21

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->mainmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 362
    new-array v2, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_SIZE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_BACKGROUND:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_ENABLE_COVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->papermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 363
    new-array v2, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_APLI:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EXPORT_TO_WEBDAV:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SAVE_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PRINT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->sendmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 364
    new-array v2, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_ENTRE_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_FIT_PAPER_WIDTH:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->zoommenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 365
    new-array v2, v11, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOGOUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ACCOUNT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPEN_FORBIZ_MANAGEMENT_TOOL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPEN_SHARE_CORDINATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_LEGAL_NOTICES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VERSION_NO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->aboutmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 376
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SCOREMENU_SCORELIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_HIDE_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SHOW_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MANAGE_MEMBER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_COMMAND_USE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ROOM_EDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v0

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ENABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v13

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RECEIVE_ALL_DATA:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v17

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v10

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_SERVICEINFO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v19

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v12

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->collabomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 395
    new-array v2, v12, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SCOREMENU_SCORELIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_HIDE_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_SHOW_STUDENT_NAME:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BECOME_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RESIGN_CLERK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MANAGE_MEMBER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_COMMAND_USE_SETTING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ROOM_EDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v0

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_ENABLE_WRITE_ACCESS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v13

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_RECEIVE_ALL_DATA:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v17

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_SERVICEINFO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v10

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v19

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->collabomenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 413
    new-array v2, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_APPLICATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_BY_FILE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->collabodistributemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 420
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CONTEXTMENU_USERLIST_START_FEATURED_PERSONAL_MODE_BY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST_BECOME_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST_RESIGN_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FORBID_BROWSING_AMONG_STUDENTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JOIN_TO_THIS_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LEAVE_FROM_THIS_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_JOIN_IN_MY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAKE_MY_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->collaboContextMenuUserList:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 442
    new-array v2, v11, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_SHAPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_PARTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_READ_WEBPAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FILE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEWPAGE_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HISTORY_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->addmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 454
    new-array v2, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TAKE_A_PICTURE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->addmenu_forschool_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 459
    new-array v2, v10, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TAKE_A_PICTURE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_ADD_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_TEXTUNIT_FOR_LABEL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_SHAPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PUTIN_PARTS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_QR_CODE_READER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_READ_WEBPAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_ADD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FILE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEWPAGE_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v0

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v13

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HISTORY_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v17

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->addmenu_forschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 483
    new-array v2, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_NEW_PAGE_FROM_PERSONAL_LAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECTFORM_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECTDOC_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PASTETEXT_NEW_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->addpagemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 490
    new-array v2, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TAKE_A_PICTURE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->photomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 491
    new-array v2, v9, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCUMENT_SELECT_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_AND_DUPLICATE_DOCUMENT_BY_CURRENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_NORMAL_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_COLLABO_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCTEMPLATE_FROM_CURRENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->notemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 500
    new-array v2, v13, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v3

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v4

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v5

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v6

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ACCOUNT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v7

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v8

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SUPPORT_LOG_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v9

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOGOUT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v18

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v11

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v20

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v16

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v14

    sget-object v22, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v22, v2, v0

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->cabinetcommandmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v22, v0

    move/from16 v2, v20

    .line 515
    new-array v0, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SORT_CHG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v18

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v11

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandPhoneMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 527
    new-array v0, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v18

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v20, 0x9

    aput-object v2, v0, v20

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v16

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v14

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v22

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v13

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v17

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v10

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v19

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v12

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 547
    new-array v0, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_START:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SORT_CHG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v18

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v20, 0x9

    aput-object v2, v0, v20

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v16

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v14

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v22

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v13

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v17

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v10

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v19

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v12

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandPhoneMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v0, v18

    .line 568
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v3

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v4

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v5

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v6

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v7

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v8

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v0, v2, v9

    sput-object v2, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandMenuForBiz:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v2, 0x9

    .line 578
    new-array v0, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SORT_CHG:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BROWSE_OWNER_SITE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MEDIA_FILES:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SYSTEM_OPTION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_MANUAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v18, 0x7

    aput-object v2, v0, v18

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_STORE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v11

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandPhoneMenuForBiz:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 591
    new-array v0, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCHING_STRING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCHING_RELEASE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetsearchmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 596
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_DOC:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_PDF:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_AUDIO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->importfilemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 604
    new-array v0, v14, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DELIVER_BLANK_PAPER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_CAMERA:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FILE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FROM_WEBDAV:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v8

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_OPEN_URL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v9

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_MAKE_FOLDER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v18, 0x7

    aput-object v2, v0, v18

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_MAKE_DRIVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v11

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_MAKE_CLASS_BOX:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v20, 0x9

    aput-object v2, v0, v20

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_INPUT_BOX_PARTICIPATION_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v16

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetaddmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 625
    new-array v0, v4, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SD_INPUT_BOX_PARTICIPATION_CODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->cabinetaddmenu_readOnly:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 630
    new-array v0, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_NORMAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_USER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PAGETYPE_PERSONAL_CLASS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuPageType:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 637
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_PERSONAL_TEMPLATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_TEACHER_PERSONAL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_COMMON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_EDITLAYER_EDIT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuEditlayer:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 647
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_FREE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_PRESENTER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_TEACHERMODE_LOCK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuTeacherMode:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 653
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_ONLY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_AND_READ_ONLY_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE_TEACHER_AND_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ALLOW_EVERYONE_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->schoolPersonalModeMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 661
    new-array v0, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DUPLICATE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REMOVE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_BACK:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BRING_TO_FRONT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->arrangectxmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 669
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_SELECT_PHOTOLIBRARY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_TAKE_A_VIDEO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_ADD_FROM_MEDIASERVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->addvideomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 675
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_PLAY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_CHANGE_THUMBNAIL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_USE_VIDEO_AUDIO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_UPLOAD_TO_MEDIASERVER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v6

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_DOWNLOAD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->videomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 688
    new-array v0, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_EDIT_IMAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SAVE_IMAGE_TO_ALBUM:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->def_PHOTO_CTX_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 693
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_JUMP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->pageListMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 698
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_HEAD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_TAIL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_SPECIFIED:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->pageJumpMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 705
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_END:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->def_SCHOOL_ATTENTION_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/16 v0, 0x29

    .line 714
    new-array v0, v0, [Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    new-instance v2, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    move/from16 v23, v1

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DRAW_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move/from16 v24, v3

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->drawcontextmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v2, v1, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v2, v0, v24

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_OPERATION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->operationmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v4

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->voicemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VOICE_PHONE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->voicePhoneMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v6

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->soundunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v7

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->flipunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v8

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->surveyunitmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v9

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ORDER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->ordermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v18, 0x7

    aput-object v1, v0, v18

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v11

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_EDIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextEdit:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v20, 0x9

    aput-object v1, v0, v20

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_DECO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextDeco:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v16

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_TEXTALIGN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextAlign:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v14

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_BULLETEDLIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextBulletedlist:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v22

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextVoice:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v13

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_OTHER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sTextContextOther:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v17

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->mainmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v10

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAPER_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->papermenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v19

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->sendmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v12

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->zoommenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v23

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->collabomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v21

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_DISTRIBUTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->collabodistributemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    aput-object v1, v0, v15

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CONTEXTMENU_USERLIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->collaboContextMenuUserList:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x15

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->addmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x16

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NEWPAGE_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->addpagemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x17

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->photomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x18

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_ADD_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->addvideomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x19

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VIDEO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->videomenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1a

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->notemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1b

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->cabinetcommandmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1c

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->cabinetaddmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1d

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_IMPORT_FILE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->importfilemenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1e

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->cabinetsearchmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x1f

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuPageType:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x20

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuEditlayer:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x21

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->schoolBtnMenuTeacherMode:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x22

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_PERSONAL_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->schoolPersonalModeMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x23

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ARRANGE_MODE_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->arrangectxmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x24

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->pageListMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x25

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->pageJumpMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x26

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->def_PHOTO_CTX_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x27

    aput-object v1, v0, v2

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ATTENTION_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager;->def_SCHOOL_ATTENTION_MENU:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2, v3}, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    const/16 v2, 0x28

    aput-object v1, v0, v2

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->_FxUiDefMenuData:[Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    .line 2011
    new-array v0, v9, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v8

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2021
    new-array v0, v9, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v8

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2030
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HELP_MODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2038
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns_phone_share:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2046
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2054
    new-array v0, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->naviBarRightBtns_phone_kigyo:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2062
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_teacher:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2069
    new-array v0, v8, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v7

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_student:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2076
    new-array v0, v6, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2081
    new-array v0, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_teacher_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2087
    new-array v0, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v5

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v6

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_student_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2093
    new-array v0, v5, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v24

    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v1, v0, v4

    sput-object v0, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_simple_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;)V
    .locals 4

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 96
    iput-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    .line 97
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    const/4 v0, 0x0

    .line 98
    iput-boolean v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_setScreenDisconnectNotification:Z

    .line 2099
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    .line 119
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_density:F

    .line 120
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    .line 122
    instance-of v0, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_1

    .line 124
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_done:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BACK_CABINET:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 127
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_commandbar_btn_newdoc:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 129
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 130
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 133
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_pagelist_tab:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 134
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_TAB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 138
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_dwindow:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 139
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DETAILWINDOW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 142
    sget v0, Lcom/metamoji/noteanytime/R$id;->editor_bottombar_wristguard:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 143
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_WRISTGUARD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    goto :goto_0

    .line 147
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_commandbar_btn_addmenu:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 149
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 152
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_anytime_button:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 154
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 157
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$id;->cabinet_refresh_button:I

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 159
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v1, v0, v2, v3}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 164
    :cond_4
    :goto_0
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_5

    .line 165
    const-string v0, "display"

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/hardware/display/DisplayManager;

    iput-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    :cond_5
    return-void
.end method

.method public static MoveRect(Landroid/graphics/Rect;II)V
    .locals 2

    .line 1999
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2000
    invoke-virtual {p0}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2001
    iput p1, p0, Landroid/graphics/Rect;->left:I

    .line 2002
    iput p2, p0, Landroid/graphics/Rect;->top:I

    add-int/2addr p1, v0

    .line 2003
    iput p1, p0, Landroid/graphics/Rect;->right:I

    add-int/2addr p2, v1

    .line 2004
    iput p2, p0, Landroid/graphics/Rect;->bottom:I

    return-void
.end method

.method static findMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/ui/UiMenuItem;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ")",
            "Lcom/metamoji/ui/UiMenuItem;"
        }
    .end annotation

    .line 1711
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v0

    .line 1712
    invoke-virtual {p0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/UiMenuItem;

    .line 1713
    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->is_haveSubMenu()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1714
    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_menus()Ljava/util/ArrayList;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1716
    invoke-static {v2, p1}, Lcom/metamoji/ui/flexible/FxManager;->findMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/ui/UiMenuItem;

    move-result-object v1

    if-eqz v1, :cond_0

    return-object v1

    .line 1720
    :cond_1
    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    goto :goto_0

    .line 1724
    :cond_2
    invoke-virtual {v1}, Lcom/metamoji/ui/UiMenuItem;->get_command()Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v0, :cond_0

    :goto_0
    return-object v1

    :cond_3
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;
    .locals 5

    .line 947
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 949
    iget-object v4, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v4, p0, :cond_0

    .line 951
    iget-object p0, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->command:Lcom/metamoji/nt/NtCommand;

    return-object p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 954
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    return-object p0
.end method

.method private getCommandManager()Lcom/metamoji/nt/NtCommandManager;
    .locals 2

    .line 1686
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 1687
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_0

    .line 1688
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 1690
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    .line 1692
    :cond_0
    instance-of v1, v0, Lcom/metamoji/noteanytime/MainActivity;

    if-eqz v1, :cond_1

    .line 1693
    check-cast v0, Lcom/metamoji/noteanytime/MainActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/MainActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    .line 1694
    :cond_1
    instance-of v1, v0, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    if-eqz v1, :cond_2

    .line 1695
    check-cast v0, Lcom/metamoji/ui/cabinet/ShareViewActivity;

    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/ShareViewActivity;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    return-object v0

    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public static getFxId(Lcom/metamoji/nt/NtCommand;)Lcom/metamoji/ui/flexible/FxManagerDef$FxId;
    .locals 5

    .line 177
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 178
    iget-object v4, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->command:Lcom/metamoji/nt/NtCommand;

    if-eq v4, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 181
    :cond_0
    iget-object p0, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 183
    :cond_1
    sget-object p0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0
.end method

.method public static getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I
    .locals 6

    .line 1034
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_LOOK_NOTIFY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_1

    .line 1035
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->existNotifyFlag()Z

    move-result p0

    if-eqz p0, :cond_0

    sget p0, Lcom/metamoji/noteanytime/R$drawable;->menu_anytime_notify_n:I

    return p0

    :cond_0
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->menu_anytime_no_notify_n:I

    return p0

    .line 1036
    :cond_1
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_2

    .line 1037
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->getVcNavigationImage()I

    move-result p0

    return p0

    .line 1040
    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_RESET_PERSONAL_STATUS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_4

    .line 1041
    invoke-static {}, Lcom/metamoji/nt/NtLocaleUtils;->getCurrentLocale()Lcom/metamoji/nt/NtLocale;

    move-result-object p0

    sget-object v0, Lcom/metamoji/nt/NtLocale;->ja:Lcom/metamoji/nt/NtLocale;

    if-ne p0, v0, :cond_3

    .line 1042
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status_jp:I

    return p0

    .line 1044
    :cond_3
    sget p0, Lcom/metamoji/noteanytime/R$drawable;->mnu_icon_school_reset_personal_status:I

    return p0

    .line 1048
    :cond_4
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_6

    aget-object v4, v0, v3

    .line 1049
    iget-object v5, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v5, p0, :cond_5

    .line 1050
    iget p0, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->imageId:I

    if-eqz p0, :cond_6

    .line 1051
    iget p0, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->imageId:I

    return p0

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_6
    return v2
.end method

.method static getMenuList(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroidx/fragment/app/FragmentActivity;)[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;
    .locals 2

    .line 776
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NOTE_DRIVE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_0

    .line 777
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->noteDriveMenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 779
    :cond_0
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_1

    .line 781
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->mainmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 787
    :cond_1
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_3

    .line 789
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 790
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->addmenu_forschool_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 792
    :cond_2
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->addmenu_forschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 797
    :cond_3
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ABOUT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_4

    .line 798
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->aboutmenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 799
    :cond_4
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_5

    .line 801
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->collabomenu_school:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 805
    :cond_5
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_7

    .line 807
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p0

    if-eqz p0, :cond_6

    .line 808
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 810
    :cond_6
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->cabinetCommandPhoneMenuForSchool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 825
    :cond_7
    sget-object p1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, p1, :cond_9

    .line 826
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isReadOnly()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 827
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->cabinetaddmenu_readOnly:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    .line 829
    :cond_8
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->cabinetaddmenu:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    :cond_9
    const/4 p1, 0x0

    .line 834
    :goto_0
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager;->_FxUiDefMenuData:[Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    array-length v1, v0

    if-ge p1, v1, :cond_b

    .line 835
    aget-object v0, v0, p1

    iget-object v0, v0, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v0, p0, :cond_a

    .line 836
    sget-object p0, Lcom/metamoji/ui/flexible/FxManager;->_FxUiDefMenuData:[Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;

    aget-object p0, p0, p1

    iget-object p0, p0, Lcom/metamoji/ui/flexible/FxManager$FxUiMenuData;->menus:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-object p0

    :cond_a
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_b
    const/4 p0, 0x0

    return-object p0
.end method

.method public static getNtCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;
    .locals 5

    .line 187
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 188
    iget-object v4, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v4, p0, :cond_0

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 191
    :cond_0
    iget-object p0, v3, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->command:Lcom/metamoji/nt/NtCommand;

    return-object p0

    .line 193
    :cond_1
    sget-object p0, Lcom/metamoji/nt/NtCommand;->CMD_INVALID:Lcom/metamoji/nt/NtCommand;

    return-object p0
.end method

.method static getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I
    .locals 6

    .line 962
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCHING_STRING:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p0, v0, :cond_0

    .line 963
    sget p0, Lcom/metamoji/noteanytime/R$string;->Cabinet_Search_Title_String:I

    return p0

    .line 965
    :cond_0
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef;->fxuiitemlist:[Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 966
    iget-object v5, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v5, p0, :cond_1

    .line 967
    iget v0, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->titlekey:I

    if-eqz v0, :cond_2

    .line 968
    iget p0, v4, Lcom/metamoji/ui/flexible/FxManagerDef$MMJFXIdListStruct;->titlekey:I

    return p0

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 975
    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    return v2

    .line 1008
    :pswitch_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    .line 1009
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object p0

    .line 1010
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 1011
    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 1012
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    .line 1013
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MAKE_MY_GROUP_WITH_THIS:I

    return p0

    .line 1015
    :cond_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_MAKE_MY_GROUP:I

    return p0

    .line 985
    :pswitch_1
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p0

    .line 986
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedGroupDic()Lcom/metamoji/forSchool/ui/ScUserListSectionData;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 988
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LEAVE_FROM_THIS_GROUP:I

    return p0

    .line 990
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object p0

    if-eqz p0, :cond_6

    .line 992
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v0

    .line 993
    iget-object p0, p0, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    .line 994
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_5

    .line 995
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LEAVE_FROM_MY_GROUP:I

    return p0

    .line 997
    :cond_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LEAVE_FROM_THIS_GROUP:I

    return p0

    .line 1000
    :cond_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->MMJNT_LSTR_LEAVE_FROM_MY_GROUP:I

    return p0

    .line 980
    :pswitch_2
    invoke-static {p0}, Lcom/metamoji/forSchool/ScSchoolUtils;->getEditLayerPersonalMenuTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_2
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static getVcNavigationImage()I
    .locals 2

    .line 1059
    invoke-static {}, Lcom/metamoji/media/voice/audio/VcRecorder;->getSharedInstance()Lcom/metamoji/media/voice/audio/VcRecorder;

    move-result-object v0

    .line 1060
    invoke-virtual {v0}, Lcom/metamoji/media/voice/audio/VcRecorder;->getRecordingStatus()Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    move-result-object v0

    sget-object v1, Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;->RECORDING:Lcom/metamoji/media/voice/audio/VcRecorder$VC_RECORDING_STATUS;

    if-ne v0, v1, :cond_0

    .line 1061
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice_recording:I

    return v0

    .line 1063
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    if-nez v0, :cond_1

    .line 1065
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice:I

    return v0

    .line 1067
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocument;->getRecordingsManager()Lcom/metamoji/media/voice/controller/VcRecordingsManager;

    move-result-object v0

    if-nez v0, :cond_2

    .line 1069
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice:I

    return v0

    .line 1083
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/media/voice/controller/VcRecordingsManager;->hasTicket()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1084
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice:I

    return v0

    .line 1086
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$drawable;->bar_btn_voice_playable:I

    return v0
.end method

.method static helpKey(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)Ljava/lang/String;
    .locals 0

    .line 1892
    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->ordinal()I

    move-result p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1915
    :pswitch_0
    const-string/jumbo p0, "shareViewGuide"

    return-object p0

    .line 1912
    :pswitch_1
    const-string p0, "cabinetBack"

    return-object p0

    .line 1909
    :pswitch_2
    const-string p0, "cabinet"

    return-object p0

    .line 1903
    :pswitch_3
    const-string/jumbo p0, "share"

    return-object p0

    .line 1906
    :pswitch_4
    const-string/jumbo p0, "shareBar"

    return-object p0

    .line 1900
    :pswitch_5
    const-string/jumbo p0, "view"

    return-object p0

    .line 1897
    :pswitch_6
    const-string p0, "pen"

    return-object p0

    .line 1894
    :pswitch_7
    const-string p0, "base"

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method static isCheckType(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 3

    .line 1291
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x0

    const/4 v1, 0x1

    packed-switch p0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    .line 1331
    :pswitch_1
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    .line 1332
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result v2

    if-nez v2, :cond_1

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isFeaturedPersonalMode()Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    return v1

    :cond_1
    :goto_0
    return v0

    .line 1326
    :pswitch_2
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    .line 1316
    :pswitch_3
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p0

    if-eqz p0, :cond_2

    .line 1318
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->collaboUserRole()I

    move-result p0

    and-int/2addr p0, v1

    if-eqz p0, :cond_2

    return v1

    :cond_2
    return v0

    :pswitch_4
    return v1

    .line 1293
    :pswitch_5
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p0

    const-string v2, "MMJJumpEnabled"

    invoke-virtual {p0, v2, v0}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p0

    if-nez p0, :cond_3

    return v0

    :cond_3
    :pswitch_6
    return v1

    .line 1351
    :pswitch_7
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p0

    if-eqz p0, :cond_8

    .line 1352
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    .line 1353
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isCurrentPageForClass()Z

    move-result v2

    if-nez v2, :cond_8

    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->isPersonalMode()Z

    move-result p0

    if-nez p0, :cond_8

    return v1

    .line 1339
    :pswitch_8
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p0

    if-nez p0, :cond_8

    .line 1340
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isCurrentPageForUserOrGroupOrClass()Z

    move-result p0

    if-eqz p0, :cond_8

    return v1

    .line 1364
    :pswitch_9
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->isCurrentPageForClass()Z

    move-result p0

    if-eqz p0, :cond_5

    .line 1366
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/metamoji/ns/NsCollaboManager;->isCollabo()Z

    move-result p0

    if-nez p0, :cond_4

    goto :goto_2

    :cond_4
    return v1

    .line 1373
    :cond_5
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p0

    .line 1374
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->presenterPersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1376
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->featuredPersonalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object v2

    if-nez v2, :cond_7

    .line 1377
    invoke-virtual {p0}, Lcom/metamoji/forSchool/ScSchoolManager;->personalModePersonalLayerInfo()Ljava/util/Map;

    move-result-object p0

    if-eqz p0, :cond_6

    goto :goto_1

    :cond_6
    return v0

    :cond_7
    :goto_1
    return v1

    :cond_8
    :goto_2
    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x31
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_6
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public static isHiddenVoiceMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method static isMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 1

    .line 846
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return p0

    :pswitch_0
    const/4 p0, 0x1

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static isNotClosePopupMenuWhenExecCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 1

    .line 1099
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/16 v0, 0x36

    if-eq p0, v0, :cond_0

    const/16 v0, 0x37

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    const/4 p0, 0x1

    return p0
.end method

.method public static isSimpleUiMode()Z
    .locals 2

    .line 2389
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v0

    sget-object v1, Lcom/metamoji/nt/NtFeature;->AppSimpleViewMode:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public static makeContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroidx/fragment/app/FragmentActivity;",
            ")V"
        }
    .end annotation

    .line 1733
    invoke-static {p1, p3}, Lcom/metamoji/ui/flexible/FxManager;->getMenuList(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroidx/fragment/app/FragmentActivity;)[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object p1

    .line 1734
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_5

    aget-object v3, p1, v2

    .line 1735
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_0

    goto :goto_2

    .line 1738
    :cond_0
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isHiddenVoiceMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1741
    :cond_1
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1742
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1743
    invoke-static {v4, v3, p2, p3}, Lcom/metamoji/ui/flexible/FxManager;->makeContextMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;Landroidx/fragment/app/FragmentActivity;)V

    .line 1744
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_4

    .line 1745
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v5

    .line 1746
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v7

    invoke-direct {v6, v4, v7, v5, v5}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 1748
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_TEXT_CTX_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SOUND_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FLIP_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SURVEY_UNIT_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VOICE_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PHOTO_CTX_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq v3, v4, :cond_2

    .line 1760
    invoke-virtual {p0, v1, v6}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    goto :goto_1

    .line 1762
    :cond_2
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1766
    :cond_3
    invoke-static {p2, v3}, Lcom/metamoji/ui/flexible/FxManager;->findMenu(Ljava/util/ArrayList;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/ui/UiMenuItem;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 1768
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_5
    :goto_2
    return-void
.end method

.method private showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1639
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method private showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/MenuCloseEventListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            ")V"
        }
    .end annotation

    .line 1642
    sget-object v3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const/4 v4, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method


# virtual methods
.method public GetActivity()Landroidx/fragment/app/FragmentActivity;
    .locals 1

    .line 110
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    return-object v0
.end method

.method countAndCheck(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)Lcom/metamoji/ui/flexible/FxManager$FxHelpId;
    .locals 6

    .line 1829
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 1833
    :cond_0
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->helpKey(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 1835
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object v2

    .line 1838
    const-string v3, "MMJNtHelpCauseCount"

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtUserDefaults;->getMapValue(Ljava/lang/String;)Ljava/util/Map;

    move-result-object v4

    if-nez v4, :cond_1

    .line 1840
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 1842
    :cond_1
    invoke-interface {v4, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    if-eqz v5, :cond_2

    .line 1844
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v1

    :cond_2
    add-int/lit8 v5, v1, 0x1

    .line 1846
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 1847
    invoke-interface {v4, v0, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1849
    invoke-virtual {v2, v3, v4}, Lcom/metamoji/nt/NtUserDefaults;->setValue(Ljava/lang/String;Ljava/util/Map;)V

    .line 1851
    :cond_3
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_NON:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    .line 1852
    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    if-gt v1, v3, :cond_4

    goto :goto_0

    :pswitch_1
    if-ne v1, v3, :cond_4

    goto :goto_0

    :pswitch_2
    if-gt v1, v3, :cond_4

    goto :goto_0

    :pswitch_3
    if-nez v1, :cond_4

    :goto_0
    return-object p1

    :cond_4
    :goto_1
    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 1394
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method public execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V
    .locals 4

    .line 1398
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1401
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1402
    invoke-virtual {v1}, Lcom/metamoji/nt/NtNoteController;->getCurrentNoteMode()Lcom/metamoji/nt/NtNoteController$NoteMode;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtNoteController$NoteMode;->JUMP_SETTING:Lcom/metamoji/nt/NtNoteController$NoteMode;

    if-ne v1, v2, :cond_0

    .line 1403
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_EXIT_JUMP_SETTING_MODE:Lcom/metamoji/nt/NtCommand;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    .line 1407
    :cond_0
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FULLSCREEN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v1, :cond_2

    .line 1408
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1409
    new-instance p3, Lcom/metamoji/ui/UiMenuItem;

    sget-object p4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-direct {p3, p4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1410
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p3

    sget-object p4, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p3, p4}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1411
    new-instance p3, Lcom/metamoji/ui/UiMenuItem;

    sget-object p4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->F_MODES:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-direct {p3, p4}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1413
    :cond_1
    sget-object p3, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    const/4 p4, 0x0

    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V

    return-void

    .line 1415
    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_3

    .line 1416
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1418
    new-instance p3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {p3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1419
    sget-object p4, Lcom/metamoji/nt/NtCommand;->CMD_UNDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 1420
    sget-object p4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-static {p4}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 1421
    sget-object p4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1423
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance p3, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {p3}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1427
    sget-object p4, Lcom/metamoji/nt/NtCommand;->CMD_REDO:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 1428
    sget-object p4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_REDO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-static {p4}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result p4

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 1429
    sget-object p4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->UNDO_REDO_COMB:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {p3, p4}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1431
    invoke-virtual {p1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1433
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;)V

    return-void

    .line 1437
    :cond_3
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->isMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1438
    invoke-virtual/range {p0 .. p5}, Lcom/metamoji/ui/flexible/FxManager;->execMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V

    return-void

    .line 1441
    :cond_4
    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object p3

    if-eqz p3, :cond_5

    .line 1443
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object p1

    .line 1444
    new-instance p4, Lcom/metamoji/cm/CmContext;

    invoke-direct {p4}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 1445
    const-string p5, "AnchorView"

    invoke-virtual {p4, p5, p2}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 1446
    invoke-virtual {p3, p1, p4}, Lcom/metamoji/nt/NtCommandManager;->execCommand(Lcom/metamoji/nt/NtCommand;Lcom/metamoji/cm/CmContext;)Z

    :cond_5
    return-void
.end method

.method execMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;Lcom/metamoji/ui/MenuCloseEventListener;)V
    .locals 6

    .line 1456
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object p3

    invoke-virtual {p3}, Lcom/metamoji/cm/CmTaskManager;->isBusy()Z

    move-result p3

    if-eqz p3, :cond_0

    return-void

    .line 1461
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1463
    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/flexible/FxManager;->makeMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;)V

    .line 1465
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    .line 1466
    invoke-virtual {p4}, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->ordinal()I

    move-result p1

    const/4 p3, 0x2

    if-eq p1, p3, :cond_2

    const/4 p3, 0x3

    if-eq p1, p3, :cond_1

    .line 1475
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_DOWN:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    :goto_0
    move-object v3, p1

    goto :goto_1

    .line 1468
    :cond_1
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_RIGHT:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    goto :goto_0

    .line 1471
    :cond_2
    sget-object p1, Lcom/metamoji/ui/CustomMenuView$MenuDirection;->MENU_UP:Lcom/metamoji/ui/CustomMenuView$MenuDirection;

    goto :goto_0

    :goto_1
    const/4 v4, 0x1

    move-object v0, p0

    move-object v2, p2

    move-object v5, p5

    .line 1478
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method public getHelpView()Lcom/metamoji/ui/CustomHelpView;
    .locals 2

    .line 101
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_0

    .line 103
    sget v1, Lcom/metamoji/noteanytime/R$id;->CustomHelpView:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/CustomHelpView;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getHintHelpVisibleList()[I
    .locals 1

    .line 2368
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2369
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/help/HelpController;->getVisibleList()[I

    move-result-object v0

    return-object v0
.end method

.method public getMenus(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/util/ArrayList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ">;"
        }
    .end annotation

    .line 1118
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1119
    iget-object v1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    if-eqz v1, :cond_0

    .line 1121
    invoke-static {p1, v1}, Lcom/metamoji/ui/flexible/FxManager;->getMenuList(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroidx/fragment/app/FragmentActivity;)[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object p1

    .line 1122
    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/flexible/FxManager;->setEnableMenu(Ljava/util/List;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    :cond_0
    return-object v0
.end method

.method public getUiPartList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/flexible/FxItem;",
            ">;"
        }
    .end annotation

    .line 1967
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getView(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Landroid/view/View;
    .locals 3

    .line 2358
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2359
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, p1, :cond_0

    return-object v1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getVoiceAnchor()Landroid/view/View;
    .locals 4

    .line 2342
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2343
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2344
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_0

    return-object v1

    .line 2348
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2349
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2350
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_2

    return-object v1

    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method

.method public handleMirroredScreenOff()V
    .locals 9

    .line 2482
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 2483
    const-string v1, "android.hardware.display.category.PRESENTATION"

    invoke-virtual {v0, v1}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object v0

    .line 2484
    array-length v1, v0

    if-lez v1, :cond_1

    .line 2485
    iget-object v1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/fragment/app/FragmentActivity;

    .line 2486
    const-string/jumbo v2, "window"

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/WindowManager;

    .line 2487
    invoke-interface {v2}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    .line 2489
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2490
    array-length v4, v0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v0, v5

    .line 2491
    invoke-virtual {v6}, Landroid/view/Display;->getDisplayId()I

    move-result v7

    invoke-virtual {v2}, Landroid/view/Display;->getDisplayId()I

    move-result v8

    if-eq v7, v8, :cond_0

    .line 2492
    invoke-interface {v3, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2493
    new-instance v7, Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;

    invoke-direct {v7, p0, v1, v6}, Lcom/metamoji/ui/flexible/FxManager$BlackPresentation;-><init>(Lcom/metamoji/ui/flexible/FxManager;Landroid/content/Context;Landroid/view/Display;)V

    .line 2494
    invoke-virtual {v7}, Landroid/app/Presentation;->show()V

    .line 2495
    iget-object v6, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public handleMirroredScreenOn()V
    .locals 2

    .line 2469
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz v0, :cond_1

    .line 2470
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Presentation;

    .line 2471
    invoke-virtual {v1}, Landroid/app/Presentation;->hide()V

    goto :goto_0

    .line 2473
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_1
    return-void
.end method

.method public isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 6

    .line 1164
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->isMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 1166
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_16

    .line 1168
    invoke-static {p1, v0}, Lcom/metamoji/ui/flexible/FxManager;->getMenuList(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroidx/fragment/app/FragmentActivity;)[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    move-result-object p1

    if-eqz p1, :cond_16

    .line 1170
    array-length v0, p1

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_2

    aget-object v4, p1, v3

    .line 1171
    sget-object v5, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v4, v5, :cond_0

    goto :goto_1

    .line 1174
    :cond_0
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_1

    return v1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return v2

    .line 1182
    :cond_3
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_OFF:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const-string v3, "android.hardware.display.category.PRESENTATION"

    if-ne p1, v0, :cond_6

    .line 1184
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_5

    .line 1185
    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 1186
    array-length p1, p1

    if-lez p1, :cond_5

    .line 1187
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_4

    return v2

    :cond_4
    return v1

    :cond_5
    return v2

    .line 1198
    :cond_6
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MIRRORED_SCREEN_ON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_8

    .line 1200
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_displayManager:Landroid/hardware/display/DisplayManager;

    if-eqz p1, :cond_7

    .line 1201
    invoke-virtual {p1, v3}, Landroid/hardware/display/DisplayManager;->getDisplays(Ljava/lang/String;)[Landroid/view/Display;

    move-result-object p1

    .line 1202
    array-length p1, p1

    if-lez p1, :cond_7

    .line 1203
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_presentations:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    if-eqz p1, :cond_7

    return v1

    :cond_7
    return v2

    .line 1214
    :cond_8
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VERSION_NO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_9

    return v1

    .line 1217
    :cond_9
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_a

    .line 1218
    sget-boolean p1, Lcom/metamoji/noteanytime/ModelInfo;->isEvalEdition:Z

    if-nez p1, :cond_16

    return v2

    .line 1221
    :cond_a
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HISTORY_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_c

    .line 1222
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_16

    .line 1224
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p1

    if-nez p1, :cond_b

    goto/16 :goto_3

    :cond_b
    return v2

    .line 1228
    :cond_c
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_ZOOM_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_d

    return v2

    .line 1230
    :cond_d
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SHAREDRIVE_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_e

    return v2

    .line 1232
    :cond_e
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_CLASSBOX_DISPLAY_SETTINGS:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 1234
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_JUMP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_10

    .line 1235
    invoke-static {}, Lcom/metamoji/nt/NtUserDefaults;->getInstance()Lcom/metamoji/nt/NtUserDefaults;

    move-result-object p1

    const-string v0, "MMJJumpEnabled"

    invoke-virtual {p1, v0, v2}, Lcom/metamoji/nt/NtUserDefaults;->getBoolValue(Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_f

    return v2

    .line 1238
    :cond_f
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_16

    .line 1239
    instance-of v0, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_16

    .line 1240
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->isPageMode()Z

    move-result p1

    return p1

    .line 1242
    :cond_10
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_LIST_MODE_PAGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_11

    .line 1246
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_16

    .line 1247
    instance-of v0, p1, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_16

    .line 1248
    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p1}, Lcom/metamoji/noteanytime/EditorActivity;->isPageMode()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 1250
    :cond_11
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_HEAD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_TAIL:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-eq p1, v0, :cond_14

    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_JUMP_SPECIFIED:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p1, v0, :cond_12

    goto :goto_2

    .line 1272
    :cond_12
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object p1

    if-eqz p1, :cond_13

    .line 1275
    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1276
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_16

    :cond_13
    return v2

    .line 1253
    :cond_14
    :goto_2
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-eqz v0, :cond_15

    .line 1254
    instance-of v3, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v3, :cond_15

    .line 1255
    check-cast v0, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {v0}, Lcom/metamoji/noteanytime/EditorActivity;->isPageMode()Z

    move-result v0

    if-nez v0, :cond_15

    return v2

    .line 1259
    :cond_15
    invoke-static {p1}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object p1

    if-eqz p1, :cond_17

    .line 1262
    invoke-direct {p0}, Lcom/metamoji/ui/flexible/FxManager;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    if-eqz v0, :cond_16

    .line 1263
    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_16

    return v2

    :cond_16
    :goto_3
    return v1

    :cond_17
    return v2
.end method

.method public isEnabledCabinetAddMenu()Z
    .locals 1

    .line 2257
    sget-object v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/flexible/FxManager;->getMenus(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/util/ArrayList;

    move-result-object v0

    .line 2258
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z
    .locals 2

    .line 1149
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/16 v0, 0x38

    const/4 v1, 0x0

    if-eq p1, v0, :cond_0

    return v1

    .line 1151
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1153
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object p1

    .line 1154
    invoke-virtual {p1}, Lcom/metamoji/nt/NtNoteController;->allowEveryoneAnswer()Z

    move-result p1

    return p1

    :cond_1
    return v1
.end method

.method public launchHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V
    .locals 4

    .line 1797
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1801
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    if-nez v0, :cond_1

    .line 1802
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 1803
    new-instance v1, Lcom/metamoji/ui/help/HelpController;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/help/HelpController;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    .line 1805
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxManager;->countAndCheck(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    move-result-object p1

    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_NON:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    if-eq p1, v0, :cond_4

    .line 1807
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    if-ne p1, v0, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    invoke-virtual {v0}, Lcom/metamoji/ui/help/HelpController;->isShown()Z

    move-result v0

    if-nez v0, :cond_4

    .line 1809
    :cond_2
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    if-ne p1, v0, :cond_3

    .line 1810
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxManager;->updateHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    return-void

    .line 1813
    :cond_3
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$2;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/ui/flexible/FxManager$2;-><init>(Lcom/metamoji/ui/flexible/FxManager;Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    :goto_0
    return-void
.end method

.method makeGroupingStudentMenu(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 2401
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 2402
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v1, v2}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_5

    .line 2406
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v1

    .line 2407
    invoke-virtual {v1}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getSelectedUserDic()Lcom/metamoji/forSchool/ui/ScUserListItemData;

    move-result-object v1

    if-nez v1, :cond_1

    goto/16 :goto_5

    .line 2411
    :cond_1
    iget-object v2, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->userName:Ljava/lang/String;

    .line 2412
    iget-object v3, v1, Lcom/metamoji/forSchool/ui/ScUserListItemData;->dcUserId:Ljava/lang/String;

    if-eqz v2, :cond_8

    if-nez v3, :cond_2

    goto/16 :goto_5

    .line 2419
    :cond_2
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 2420
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 2421
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2422
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getGroupList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    .line 2426
    :goto_0
    invoke-static {v3, v2}, Lcom/metamoji/forSchool/ScSchoolCommand;->getBelongGroupId(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    .line 2427
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 2428
    check-cast v3, Ljava/util/Map;

    .line 2429
    const-string v4, "group-id"

    invoke-static {v3, v4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_6

    .line 2431
    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    goto :goto_2

    .line 2434
    :cond_4
    const-string v5, "TEACHER"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    goto :goto_1

    .line 2437
    :cond_5
    const-string v5, "group-name"

    invoke-static {v3, v5}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    goto :goto_3

    .line 2432
    :cond_6
    :goto_2
    sget v3, Lcom/metamoji/noteanytime/R$string;->School_ManageParticipantsDlg_Label_NoGroup:I

    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v3

    .line 2441
    :goto_3
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 2445
    new-instance v6, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v6}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    if-eqz v5, :cond_7

    .line 2446
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_4

    :cond_7
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_4
    invoke-virtual {v6, v5}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 2447
    sget-object v5, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v6, v5}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 2449
    sget-object v5, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-static {v5}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v5

    invoke-virtual {v6, v5}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 2450
    invoke-virtual {v6, v3}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 2452
    new-instance v3, Lcom/metamoji/cm/CmContext;

    invoke-direct {v3}, Lcom/metamoji/cm/CmContext;-><init>()V

    .line 2453
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 2454
    const-string v7, "groupId"

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2455
    const-string/jumbo v4, "userDic"

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2456
    const-string v4, "oldGroupId"

    invoke-interface {v5, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2457
    const-string v4, "GroupingData"

    invoke-virtual {v3, v4, v5}, Lcom/metamoji/cm/CmContext;->setExtData(Ljava/lang/String;Ljava/lang/Object;)V

    .line 2458
    invoke-virtual {v6, v3}, Lcom/metamoji/ui/UiMenuItem;->set_options(Ljava/lang/Object;)V

    .line 2460
    invoke-virtual {p1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_8
    :goto_5
    return-void
.end method

.method makeMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;)V"
        }
    .end annotation

    .line 1486
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 1487
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/flexible/FxManager;->getMenus(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1489
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    move v2, v1

    :cond_0
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 1490
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isHiddenVoiceMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 1493
    :cond_1
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MENU_SEPARATOR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_2

    if-eqz v2, :cond_0

    .line 1495
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->SEPARATOR:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1498
    :cond_2
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_4

    .line 1499
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 1501
    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v6, :cond_3

    .line 1502
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/flexible/FxManager;->makeGroupingStudentMenu(Ljava/util/ArrayList;)V

    goto :goto_2

    .line 1504
    :cond_3
    invoke-virtual {p0, v3, v4}, Lcom/metamoji/ui/flexible/FxManager;->makeMenu(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Ljava/util/ArrayList;)V

    .line 1506
    :goto_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_0

    .line 1507
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v6

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v7

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    invoke-direct {v2, v4, v6, v7, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 1508
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move v2, v5

    goto :goto_1

    .line 1511
    :cond_4
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NAVI_GROUP:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_5

    .line 1512
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->TOOLS:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1514
    :cond_5
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VERSION_NO:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_6

    .line 1515
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    sget-object v3, Lcom/metamoji/ui/UiMenuItem$MenuKind;->VERSION_INFO:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-direct {v2, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1518
    :cond_6
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_7

    .line 1519
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getCommandManager()Lcom/metamoji/nt/NtCommandManager;

    move-result-object v4

    sget-object v6, Lcom/metamoji/nt/NtCommand;->CMD_SCHOOL_GROUPING_STUDENT:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v4, v6}, Lcom/metamoji/nt/NtCommandManager;->isCommandSurelyEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v4

    if-nez v4, :cond_7

    goto/16 :goto_1

    .line 1521
    :cond_7
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DEBUG_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_8

    .line 1522
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1523
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 1524
    const-string/jumbo v4, "\u30c7\u30d0\u30c3\u30b0\u30e1\u30cb\u30e5\u30fc"

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 1525
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1526
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1528
    :cond_8
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HISTORY_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_9

    .line 1529
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->editorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1531
    invoke-interface {v4}, Lcom/metamoji/nt/INtEditor;->getMruItemMenu()Ljava/util/ArrayList;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 1533
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v6

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v7

    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    invoke-direct {v2, v4, v6, v7, v3}, Lcom/metamoji/ui/UiMenuItem;-><init>(Ljava/util/ArrayList;III)V

    .line 1534
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 1539
    :cond_9
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v4

    if-eqz v4, :cond_e

    .line 1540
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1541
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isCheckType(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 1542
    sget-object v4, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_ALLOW_EVERYONE_ANSWER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v3, v4, :cond_b

    .line 1543
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/flexible/FxManager;->isSelected(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_a

    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_4

    :cond_a
    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_4
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 1544
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_enabled(Z)V

    goto :goto_6

    .line 1546
    :cond_b
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_5

    :cond_c
    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_5
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 1548
    :goto_6
    sget-object v4, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1550
    :cond_d
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 1551
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getTitle(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v4

    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_captionid(I)V

    .line 1552
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1553
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    .line 1559
    :cond_e
    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {v3}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result v6

    aget v4, v4, v6

    const/16 v6, 0x47

    if-eq v4, v6, :cond_10

    const/16 v6, 0x48

    if-eq v4, v6, :cond_f

    const/4 v4, 0x0

    goto :goto_7

    .line 1604
    :cond_f
    sget v4, Lcom/metamoji/noteanytime/R$string;->SCHOOL_DISPLAY_ANSWER:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_7

    .line 1590
    :cond_10
    sget v4, Lcom/metamoji/noteanytime/R$string;->SCHOOL_DISPLAY_ANSWER:I

    invoke-static {v4}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v4

    :goto_7
    if-eqz v4, :cond_0

    .line 1617
    new-instance v2, Lcom/metamoji/ui/UiMenuItem;

    invoke-direct {v2}, Lcom/metamoji/ui/UiMenuItem;-><init>()V

    .line 1618
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->isCheckType(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v6

    if-eqz v6, :cond_12

    .line 1619
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v6

    if-eqz v6, :cond_11

    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_OFF:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    goto :goto_8

    :cond_11
    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;->MMJUI_MENU_CHECKSTATE_ON:Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;

    :goto_8
    invoke-virtual {v2, v6}, Lcom/metamoji/ui/UiMenuItem;->set_checkState(Lcom/metamoji/ui/UiMenuItem$MMJUIMenuCheckState;)V

    .line 1620
    sget-object v6, Lcom/metamoji/ui/UiMenuItem$MenuKind;->HASCHECK:Lcom/metamoji/ui/UiMenuItem$MenuKind;

    invoke-virtual {v2, v6}, Lcom/metamoji/ui/UiMenuItem;->set_kind(Lcom/metamoji/ui/UiMenuItem$MenuKind;)V

    .line 1622
    :cond_12
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/metamoji/ui/UiMenuItem;->set_command(Ljava/lang/Object;)V

    .line 1623
    invoke-virtual {v2, v4}, Lcom/metamoji/ui/UiMenuItem;->set_caption(Ljava/lang/String;)V

    .line 1624
    invoke-static {v3}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/UiMenuItem;->set_NormalIcon_resid(I)V

    .line 1625
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_13
    return-void
.end method

.method public makeNaviBarRightBtns(Landroid/widget/LinearLayout;)V
    .locals 12

    .line 2102
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    const/high16 v1, 0x42200000    # 40.0f

    .line 2103
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v4, v1

    .line 2106
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 2109
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2110
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_teacher:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 2111
    :cond_0
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2112
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_simple:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 2114
    :cond_1
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_student:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 2126
    :cond_2
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2127
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_teacher_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 2128
    :cond_3
    invoke-static {}, Lcom/metamoji/ui/flexible/FxManager;->isSimpleUiMode()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 2129
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_simple_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_0

    .line 2131
    :cond_4
    sget-object v1, Lcom/metamoji/ui/flexible/FxManager;->navibar_btn_right_student_phone:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2141
    :goto_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->isShare()Z

    move-result v6

    .line 2143
    array-length v8, v1

    const/4 v9, 0x0

    move v10, v9

    :goto_1
    if-ge v10, v8, :cond_a

    aget-object v11, v1, v10

    .line 2144
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v11, v2, :cond_5

    .line 2145
    invoke-static {}, Lcom/metamoji/nt/NtFeatureManager;->getInstance()Lcom/metamoji/nt/NtFeatureManager;

    move-result-object v2

    sget-object v3, Lcom/metamoji/nt/NtFeature;->AppUnavailableVoice:Lcom/metamoji/nt/NtFeature;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtFeatureManager;->isAvailable(Lcom/metamoji/nt/NtFeature;)Z

    move-result v2

    if-eqz v2, :cond_5

    goto/16 :goto_2

    .line 2148
    :cond_5
    invoke-static {v11}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v3

    .line 2149
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v11, v2, :cond_6

    .line 2150
    new-instance v2, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-direct {v2, v0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;-><init>(Landroid/content/Context;)V

    .line 2151
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->setBackgroundResource(I)V

    .line 2152
    invoke-virtual {v2, v11}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->setTag(Ljava/lang/Object;)V

    .line 2153
    invoke-virtual {v2, p0}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 2154
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v5, 0x42300000    # 44.0f

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v5

    float-to-int v5, v5

    invoke-direct {v3, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2155
    iget-object v3, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2157
    invoke-virtual {v2}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateBtnImage()V

    .line 2158
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v11, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    goto :goto_2

    .line 2159
    :cond_6
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_UNDO_REDO_COMB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v11, v2, :cond_7

    .line 2160
    new-instance v2, Lcom/metamoji/ui/flexible/FxUndoRedoButton;

    invoke-direct {v2, v0, p0}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;-><init>(Landroid/content/Context;Lcom/metamoji/ui/flexible/FxManager;)V

    .line 2161
    invoke-virtual {v2, v11}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setTag(Ljava/lang/Object;)V

    .line 2162
    invoke-virtual {v2, v4, v4}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setSize(II)V

    .line 2163
    invoke-virtual {v2, v3, v4, v4, v6}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setButtonImage(IIIZ)V

    .line 2164
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2165
    iget-object v3, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 2167
    :cond_7
    new-instance v2, Landroid/widget/Button;

    invoke-direct {v2, v0}, Landroid/widget/Button;-><init>(Landroid/content/Context;)V

    .line 2168
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setWidth(I)V

    .line 2169
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setHeight(I)V

    .line 2170
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 2171
    invoke-virtual {v2, v11}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 2172
    invoke-virtual {v2, p0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const/4 v7, 0x1

    move v5, v4

    .line 2173
    invoke-static/range {v2 .. v7}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    .line 2174
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p1, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 2175
    iget-object v3, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2176
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v11, v2, v3, v5}, Lcom/metamoji/ui/flexible/FxManager;->setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    .line 2177
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v11, v3, :cond_9

    .line 2178
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v11, v3, :cond_9

    .line 2179
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v3

    if-nez v3, :cond_8

    if-nez v6, :cond_8

    const/16 v3, 0x8

    .line 2180
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_2

    .line 2182
    :cond_8
    invoke-virtual {v2, v9}, Landroid/widget/Button;->setVisibility(I)V

    :cond_9
    :goto_2
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_a
    return-void
.end method

.method public notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V
    .locals 4

    .line 2270
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2271
    instance-of v2, v1, Lcom/metamoji/ui/flexible/FxUndoRedoButton;

    if-eqz v2, :cond_1

    .line 2272
    check-cast v1, Lcom/metamoji/ui/flexible/FxUndoRedoButton;

    .line 2273
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    goto :goto_0

    .line 2275
    :cond_1
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2276
    invoke-static {v2}, Lcom/metamoji/ui/flexible/FxManager;->getCommand(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Lcom/metamoji/nt/NtCommand;

    move-result-object v2

    if-ne v2, p1, :cond_0

    .line 2278
    invoke-virtual {v1, p2}, Landroid/view/View;->setEnabled(Z)V

    if-eqz p2, :cond_2

    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_2
    const/high16 v2, 0x3f000000    # 0.5f

    .line 2279
    :goto_1
    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0

    .line 2283
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_4
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxItem;

    .line 2284
    iget-object v2, v1, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FULLSCREEN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_4

    .line 2285
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v2, :cond_4

    .line 2286
    iget-object v1, v1, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    check-cast v1, Lcom/metamoji/ui/ShowBarButton;

    .line 2287
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/ShowBarButton;->notifyEnableCommand(Lcom/metamoji/nt/NtCommand;Z)V

    goto :goto_2

    :cond_5
    return-void
.end method

.method public notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V
    .locals 4

    .line 2294
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxItem;

    .line 2295
    iget-object v2, v1, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_FULLSCREEN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_2

    .line 2296
    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SET_NOTEMODE:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_SELECTPEN:Lcom/metamoji/nt/NtCommand;

    if-eq p1, v2, :cond_1

    sget-object v2, Lcom/metamoji/nt/NtCommand;->CMD_PEN_SETTINGS_CHANGED:Lcom/metamoji/nt/NtCommand;

    if-ne p1, v2, :cond_0

    .line 2301
    :cond_1
    iget-object v1, v1, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    check-cast v1, Lcom/metamoji/ui/ShowBarButton;

    .line 2302
    invoke-virtual {v1, p1, p2}, Lcom/metamoji/ui/ShowBarButton;->notifySelectCommand(Lcom/metamoji/nt/NtCommand;I)V

    goto :goto_0

    .line 2304
    :cond_2
    iget-object v2, v1, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_VC_NAVIGATION:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_0

    .line 2305
    iget-object v1, v1, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ui/flexible/FxManager;->updateVcNavigationImage(Landroid/view/View;Lcom/metamoji/nt/NtCommand;)V

    goto :goto_0

    :cond_3
    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 2330
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    .line 2331
    instance-of v0, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 2332
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 2333
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->isNotePrepared()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2337
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x0

    .line 2338
    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {p0, v0, p1, v1, v2}, Lcom/metamoji/ui/flexible/FxManager;->execFxUi(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V

    return-void
.end method

.method public putHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 1

    .line 1931
    new-instance v0, Lcom/metamoji/ui/flexible/FxItem;

    invoke-direct {v0}, Lcom/metamoji/ui/flexible/FxItem;-><init>()V

    .line 1932
    iput-object p1, v0, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 1933
    iput-object p2, v0, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    .line 1934
    iput-object p4, v0, Lcom/metamoji/ui/flexible/FxItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 1935
    iput-object p3, v0, Lcom/metamoji/ui/flexible/FxItem;->anchorRect:Landroid/graphics/Rect;

    .line 1937
    iget-object p2, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p2

    .line 1938
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 1939
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/metamoji/ui/flexible/FxItem;

    .line 1940
    iget-object p3, p3, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne p3, p1, :cond_0

    .line 1941
    invoke-interface {p2}, Ljava/util/Iterator;->remove()V

    goto :goto_0

    .line 1944
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public restoreHintHelpVisibleList([I)V
    .locals 2

    .line 2373
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    if-nez v0, :cond_0

    .line 2374
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 2375
    new-instance v1, Lcom/metamoji/ui/help/HelpController;

    invoke-direct {v1, v0}, Lcom/metamoji/ui/help/HelpController;-><init>(Ljava/lang/ref/WeakReference;)V

    iput-object v1, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    .line 2377
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/help/HelpController;->restoreVisibleList([I)V

    return-void
.end method

.method public setEnableMenu(Ljava/util/List;[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ">;[",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ")V"
        }
    .end annotation

    .line 1135
    array-length v0, p2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    aget-object v2, p2, v1

    .line 1137
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_0

    goto :goto_2

    .line 1140
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/flexible/FxManager;->isEnable(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v3

    if-nez v3, :cond_1

    invoke-static {v2}, Lcom/metamoji/ui/flexible/FxManager;->isCheckType(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Z

    move-result v3

    if-nez v3, :cond_1

    goto :goto_1

    .line 1144
    :cond_1
    invoke-interface {p1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_2
    return-void
.end method

.method public setHelpItem(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)V
    .locals 1

    .line 1954
    new-instance v0, Lcom/metamoji/ui/flexible/FxItem;

    invoke-direct {v0}, Lcom/metamoji/ui/flexible/FxItem;-><init>()V

    .line 1955
    iput-object p1, v0, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 1956
    iput-object p2, v0, Lcom/metamoji/ui/flexible/FxItem;->uiPartView:Landroid/view/View;

    .line 1957
    iput-object p4, v0, Lcom/metamoji/ui/flexible/FxItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 1958
    iput-object p3, v0, Lcom/metamoji/ui/flexible/FxItem;->anchorRect:Landroid/graphics/Rect;

    .line 1959
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->m_uiPartList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "Z)V"
        }
    .end annotation

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    .line 1645
    invoke-virtual/range {v0 .. v5}, Lcom/metamoji/ui/flexible/FxManager;->showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/ui/MenuCloseEventListener;)V

    return-void
.end method

.method public showActionMenu(Ljava/util/ArrayList;Landroid/view/View;Lcom/metamoji/ui/CustomMenuView$MenuDirection;ZLcom/metamoji/ui/MenuCloseEventListener;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/UiMenuItem;",
            ">;",
            "Landroid/view/View;",
            "Lcom/metamoji/ui/CustomMenuView$MenuDirection;",
            "Z",
            "Lcom/metamoji/ui/MenuCloseEventListener;",
            ")V"
        }
    .end annotation

    .line 1649
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/fragment/app/FragmentActivity;

    if-nez v0, :cond_0

    return-void

    .line 1651
    :cond_0
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_1

    if-eqz p4, :cond_1

    .line 1652
    move-object p4, v0

    check-cast p4, Lcom/metamoji/noteanytime/EditorActivity;

    invoke-virtual {p4}, Lcom/metamoji/noteanytime/EditorActivity;->hideSoftImput()V

    .line 1655
    :cond_1
    sget p4, Lcom/metamoji/noteanytime/R$id;->CustomMenuView:I

    invoke-virtual {v0, p4}, Landroidx/fragment/app/FragmentActivity;->findViewById(I)Landroid/view/View;

    move-result-object p4

    move-object v0, p4

    check-cast v0, Lcom/metamoji/ui/CustomMenuView;

    .line 1656
    new-instance p4, Landroid/graphics/Rect;

    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v2

    const/4 v3, 0x0

    invoke-direct {p4, v3, v3, v1, v2}, Landroid/graphics/Rect;-><init>(IIII)V

    const/4 v1, 0x0

    .line 1657
    invoke-static {p4, p2, v1}, Lcom/metamoji/cm/CmUtils;->transformRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v5

    .line 1658
    new-instance p4, Landroid/view/ViewGroup$MarginLayoutParams;

    invoke-direct {p4, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 1659
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 1660
    instance-of v2, v1, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_2

    .line 1661
    move-object p4, v1

    check-cast p4, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 1663
    :cond_2
    iget v1, v5, Landroid/graphics/Rect;->left:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->left:I

    .line 1664
    iget v1, v5, Landroid/graphics/Rect;->top:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    sub-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->top:I

    .line 1665
    iget v1, v5, Landroid/graphics/Rect;->right:I

    iget v2, p4, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iput v1, v5, Landroid/graphics/Rect;->right:I

    .line 1666
    iget v1, v5, Landroid/graphics/Rect;->bottom:I

    iget p4, p4, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    add-int/2addr v1, p4

    iput v1, v5, Landroid/graphics/Rect;->bottom:I

    .line 1668
    new-instance v2, Lcom/metamoji/ui/flexible/FxManager$1;

    invoke-direct {v2, p0}, Lcom/metamoji/ui/flexible/FxManager$1;-><init>(Lcom/metamoji/ui/flexible/FxManager;)V

    move-object v1, p1

    move-object v4, p2

    move-object v6, p3

    move-object v3, p5

    invoke-virtual/range {v0 .. v6}, Lcom/metamoji/ui/CustomMenuView;->ShowActionMenu(Ljava/util/List;Lcom/metamoji/ui/MenuEventListener;Lcom/metamoji/ui/MenuCloseEventListener;Landroid/view/View;Landroid/graphics/Rect;Lcom/metamoji/ui/CustomMenuView$MenuDirection;)V

    return-void
.end method

.method public showSupportWeb(Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    goto :goto_0

    .line 1975
    :cond_0
    invoke-static {}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetState()I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    .line 1984
    const-string v0, "manual_hinthelp"

    invoke-static {v0}, Lcom/metamoji/nt/notify/NtSysInfoManager;->GetStringData(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1985
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 1986
    const-string v1, "%s?page=%s"

    filled-new-array {v0, p1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {v1, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 1987
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    .line 1988
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 1989
    iget-object p1, p0, Lcom/metamoji/ui/flexible/FxManager;->_activity:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/fragment/app/FragmentActivity;

    if-eqz p1, :cond_1

    .line 1991
    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    :cond_1
    :goto_0
    return-void

    .line 1979
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->Menu_Manual:I

    invoke-static {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->showOfflineMsg(I)V

    return-void
.end method

.method public updateEnable()V
    .locals 2

    .line 2196
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/flexible/FxManager$3;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/flexible/FxManager$3;-><init>(Lcom/metamoji/ui/flexible/FxManager;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method updateHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V
    .locals 1

    .line 1825
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/help/HelpController;->showHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V

    return-void
.end method

.method public updateHintHelp()V
    .locals 1

    .line 2381
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->m_helpController:Lcom/metamoji/ui/help/HelpController;

    if-eqz v0, :cond_0

    .line 2382
    invoke-virtual {v0}, Lcom/metamoji/ui/help/HelpController;->update()V

    :cond_0
    return-void
.end method

.method public updateNaviBarRightBtns(Z)V
    .locals 2

    .line 2213
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2214
    invoke-virtual {p0, v1, p1}, Lcom/metamoji/ui/flexible/FxManager;->updateViewImage(Landroid/view/View;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public updateNotify()V
    .locals 4

    .line 2246
    iget-object v0, p0, Lcom/metamoji/ui/flexible/FxManager;->_barRightBtns:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 2247
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2248
    sget-object v3, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v2, v3, :cond_0

    .line 2249
    instance-of v2, v1, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    if-eqz v2, :cond_0

    .line 2250
    check-cast v1, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    invoke-static {v1}, Lcom/metamoji/nt/notify/NtSysInfoManager;->updateStateAsync(Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method updateVcNavigationImage(Landroid/view/View;Lcom/metamoji/nt/NtCommand;)V
    .locals 1

    .line 2312
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$4;->$SwitchMap$com$metamoji$nt$NtCommand:[I

    invoke-virtual {p2}, Lcom/metamoji/nt/NtCommand;->ordinal()I

    move-result p2

    aget p2, v0, p2

    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    const/4 v0, 0x2

    if-eq p2, v0, :cond_0

    return-void

    .line 2315
    :cond_0
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->isShare()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/flexible/FxManager;->updateViewImage(Landroid/view/View;Z)V

    return-void
.end method

.method updateViewImage(Landroid/view/View;Z)V
    .locals 7

    .line 2218
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 2219
    invoke-static {v0}, Lcom/metamoji/ui/flexible/FxManager;->getImage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)I

    move-result v2

    .line 2220
    instance-of v1, p1, Lcom/metamoji/ui/flexible/FxUndoRedoButton;

    if-eqz v1, :cond_0

    const/high16 v0, 0x42200000    # 40.0f

    .line 2221
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    .line 2222
    check-cast p1, Lcom/metamoji/ui/flexible/FxUndoRedoButton;

    .line 2223
    invoke-virtual {p1, v2, v0, v0, p2}, Lcom/metamoji/ui/flexible/FxUndoRedoButton;->setButtonImage(IIIZ)V

    return-void

    .line 2224
    :cond_0
    sget-object v1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v0, v1, :cond_1

    .line 2225
    check-cast p1, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;

    .line 2226
    invoke-virtual {p1}, Lcom/metamoji/nt/notify/NtAnytimeNotifyButton;->updateBtnImage()V

    return-void

    .line 2228
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    .line 2229
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v4

    if-eqz v3, :cond_2

    if-eqz v4, :cond_2

    const/4 v6, 0x1

    move-object v1, p1

    move v5, p2

    .line 2231
    invoke-static/range {v1 .. v6}, Lcom/metamoji/noteanytime/EditorActivityModeBarController;->setEtc(Landroid/view/View;IIIZZ)V

    goto :goto_0

    :cond_2
    move-object v1, p1

    move v5, p2

    .line 2234
    :goto_0
    sget-object p1, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v0, p1, :cond_4

    .line 2235
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result p1

    if-nez p1, :cond_3

    if-nez v5, :cond_3

    const/16 p1, 0x8

    .line 2236
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_3
    const/4 p1, 0x0

    .line 2238
    invoke-virtual {v1, p1}, Landroid/view/View;->setVisibility(I)V

    :cond_4
    return-void
.end method
