.class public Lcom/metamoji/ui/help/HelpController;
.super Ljava/lang/Object;
.source "HelpController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/help/HelpController$HelpControllerState;
    }
.end annotation


# static fields
.field static HC_DIR_DOWN:I = 0x0

.field static HC_DIR_LEFT:I = 0x3

.field static HC_DIR_RIGHT:I = 0x2

.field static HC_DIR_UP:I = 0x1

.field static basehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetbackhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static cabinetbasehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static penhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sharehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sharehelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sharenewhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static sharenewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static shareviewguidehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static viewhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

.field static viewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;


# instance fields
.field _fxmanager:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/flexible/FxManager;",
            ">;"
        }
    .end annotation
.end field

.field public helpgrouplist:[Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

.field m_dispGroup:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/flexible/FxManager$FxHelpId;",
            ">;"
        }
    .end annotation
.end field

.field m_escapeViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/graphics/Rect;",
            ">;"
        }
    .end annotation
.end field

.field m_helpList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/help/HelpItem;",
            ">;"
        }
    .end annotation
.end field

.field m_maxx:F

.field m_maxy:F

.field m_mazecRect:Landroid/graphics/Rect;

.field m_minx:F

.field m_miny:F

.field m_needsort:Z

.field m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

.field m_styleBarRect:Landroid/graphics/Rect;

.field m_view:Lcom/metamoji/ui/CustomHelpView;


# direct methods
.method static bridge synthetic -$$Nest$mdelayDisp(Lcom/metamoji/ui/help/HelpController;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpController;->delayDisp()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 9

    const/4 v0, 0x3

    .line 321
    new-array v1, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_BACK_CABINET:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SEND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v4, 0x1

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v5, 0x2

    aput-object v2, v1, v5

    sput-object v1, Lcom/metamoji/ui/help/HelpController;->basehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v1, 0x4

    .line 322
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_MAIN_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_TAB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->viewhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 323
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_HIDE_BAR:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_PAGE_TAB:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->viewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 325
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_WRISTGUARD:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_DETAILWINDOW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->penhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 326
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_ADD_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_CREATE_NOTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SYNC_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->cabinetbasehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 328
    new-array v2, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SEARCH_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_EDIT_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->cabinetbackhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v2, 0x7

    .line 330
    new-array v2, v2, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_PRIVATE_MODE_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_SHARE_MODE_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_USER_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_CHAT_VIEW:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_OPEN_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v1

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_CLOSE_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    const/4 v7, 0x5

    aput-object v6, v2, v7

    const/4 v6, 0x6

    sget-object v8, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v8, v2, v6

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->sharehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 333
    new-array v2, v7, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_PAGETYPE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_EDITLAYER:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_BTNMENU_TEACHERMODE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_BAR_OPEN_BTN:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v0

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v1

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->sharehelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 337
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_COLLABO_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->sharenewhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 338
    new-array v2, v0, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_NEW_DOCUMENT:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v3

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_SCHOOL_MANAGE_CLASS_LIST:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v4

    sget-object v6, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v6, v2, v5

    sput-object v2, Lcom/metamoji/ui/help/HelpController;->sharenewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 340
    new-array v1, v1, [Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_VIEW_CHANGE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v3

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_SHAREVIEW_BODY:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v4

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_COMMAND_MENU:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v5

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    aput-object v2, v1, v0

    sput-object v1, Lcom/metamoji/ui/help/HelpController;->shareviewguidehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    return-void
.end method

.method public constructor <init>(Ljava/lang/ref/WeakReference;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/flexible/FxManager;",
            ">;)V"
        }
    .end annotation

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x8

    .line 342
    new-array v0, v0, [Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    const/4 v1, 0x0

    sget-object v2, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v2, v0, v1

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_VIEW:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_PEN:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    const/4 v1, 0x3

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BASE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    const/4 v1, 0x4

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_CABINET_BACK:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    const/4 v1, 0x5

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHARE_NEW:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    const/4 v1, 0x6

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHARE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    const/4 v1, 0x7

    sget-object v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_SHAREVIEW_GUIDE:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    aput-object v3, v0, v1

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->helpgrouplist:[Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    .line 74
    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->_fxmanager:Ljava/lang/ref/WeakReference;

    .line 75
    sget-object p1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 76
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    .line 77
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    .line 78
    sget-object p1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 79
    iput-boolean v2, p0, Lcom/metamoji/ui/help/HelpController;->m_needsort:Z

    return-void
.end method

.method private convertRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;
    .locals 4

    .line 417
    new-instance v0, Landroid/graphics/PointF;

    iget v1, p1, Landroid/graphics/Rect;->left:I

    int-to-float v1, v1

    iget v2, p1, Landroid/graphics/Rect;->top:I

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 418
    invoke-static {v0, p2, p3}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    .line 420
    new-instance p2, Landroid/graphics/Rect;

    iget p3, v0, Landroid/graphics/PointF;->x:F

    float-to-int p3, p3

    iget v1, v0, Landroid/graphics/PointF;->y:F

    float-to-int v1, v1

    iget v2, v0, Landroid/graphics/PointF;->x:F

    float-to-int v2, v2

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    add-int/2addr v2, v3

    iget v0, v0, Landroid/graphics/PointF;->y:F

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result p1

    add-int/2addr v0, p1

    invoke-direct {p2, p3, v1, v2, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object p2
.end method

.method private delayDisp()V
    .locals 4

    .line 943
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->updateViewOrShow()V

    .line 944
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getHeight()I

    move-result v0

    const/16 v1, 0x64

    if-ge v0, v1, :cond_0

    .line 945
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/help/HelpController$4;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/help/HelpController$4;-><init>(Lcom/metamoji/ui/help/HelpController;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method static helpMessage(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/lang/String;
    .locals 1

    .line 683
    sget-object v0, Lcom/metamoji/ui/help/HelpController$5;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p0

    aget p0, v0, p0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 780
    :pswitch_0
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_School_Manage_Class_List_Btn:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 777
    :pswitch_1
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_School_New_Document:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 774
    :pswitch_2
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_School_BtnMenu_TeacherMode:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 771
    :pswitch_3
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_School_BtnMenu_PageType:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 768
    :pswitch_4
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_School_BtnMenu_EditLayer:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 765
    :pswitch_5
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Shareview:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 762
    :pswitch_6
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_View_Change:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 759
    :pswitch_7
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Share_Bat_Open_Close:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 755
    :pswitch_8
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Share_Chat_List:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 752
    :pswitch_9
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Share_User_List:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 749
    :pswitch_a
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Change_Share_Mode:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 745
    :pswitch_b
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Start_Share:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 742
    :pswitch_c
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Share_Memu:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 739
    :pswitch_d
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Edit_Btn:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 736
    :pswitch_e
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Narrow:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 733
    :pswitch_f
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Sort:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 729
    :pswitch_10
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Command_Memu_Biz:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 716
    :pswitch_11
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Sync_Btn:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    .line 718
    invoke-static {}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getInstanceFromSystemSettings()Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;

    move-result-object v0

    .line 719
    invoke-virtual {v0}, Lcom/metamoji/cs/dc/user/CsDCUserInfoSettings;->getUserInfo()Lcom/metamoji/cs/dc/user/CsDCUserInfo;

    move-result-object v0

    .line 720
    iget-boolean v0, v0, Lcom/metamoji/cs/dc/user/CsDCUserInfo;->isOnPremise:Z

    if-eqz v0, :cond_0

    .line 721
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Sync_Btn_ONP:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    :cond_0
    return-object p0

    .line 713
    :pswitch_12
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_New_Note:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 710
    :pswitch_13
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Cabinet_Make_Folder:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 707
    :pswitch_14
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Page_Tab:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 704
    :pswitch_15
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Hide_Bar:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 701
    :pswitch_16
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_DetailWindow:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 698
    :pswitch_17
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_WristGuard:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 695
    :pswitch_18
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Command_Memu:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 689
    :pswitch_19
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Send_Memu:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 685
    :pswitch_1a
    sget p0, Lcom/metamoji/noteanytime/R$string;->Help_Back_To_Cabinet:I

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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


# virtual methods
.method HideAll()V
    .locals 2

    .line 914
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    if-ne v0, v1, :cond_0

    .line 916
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/CustomHelpView;->setVisibility(I)V

    .line 917
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->invalidate()V

    .line 918
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    :cond_0
    return-void
.end method

.method addSubView()V
    .locals 1

    .line 214
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->_fxmanager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManager;

    if-eqz v0, :cond_0

    .line 216
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->getHelpView()Lcom/metamoji/ui/CustomHelpView;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    .line 217
    invoke-virtual {v0, p0}, Lcom/metamoji/ui/CustomHelpView;->setHelpController(Lcom/metamoji/ui/help/HelpController;)V

    :cond_0
    return-void
.end method

.method calcAvoidArea()V
    .locals 4

    .line 237
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->_fxmanager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManager;

    if-nez v0, :cond_0

    goto :goto_1

    .line 239
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/flexible/FxManager;->GetActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    .line 244
    :cond_1
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_styleBarRect:Landroid/graphics/Rect;

    .line 245
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_mazecRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    .line 246
    iput v1, p0, Lcom/metamoji/ui/help/HelpController;->m_minx:F

    .line 247
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v2}, Lcom/metamoji/ui/CustomHelpView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    .line 248
    iput v1, p0, Lcom/metamoji/ui/help/HelpController;->m_miny:F

    .line 249
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHelpView;->getHeight()I

    move-result v1

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x1e

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    sub-int/2addr v1, v2

    int-to-float v1, v1

    iput v1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxy:F

    .line 253
    instance-of v1, v0, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v1, :cond_4

    .line 254
    move-object v2, v0

    check-cast v2, Lcom/metamoji/noteanytime/EditorActivity;

    .line 255
    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivity;->isShowEditorBars()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 256
    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivity;->getTopAppBarHeight()I

    move-result v3

    int-to-float v3, v3

    iput v3, p0, Lcom/metamoji/ui/help/HelpController;->m_miny:F

    .line 267
    :cond_3
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    if-eqz v0, :cond_4

    if-eqz v1, :cond_4

    .line 269
    invoke-virtual {v2}, Lcom/metamoji/noteanytime/EditorActivity;->getCollaboModeBar()Lcom/metamoji/ns/ui/NsCollaboModeViewBase;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 271
    invoke-virtual {v0}, Lcom/metamoji/ns/ui/NsCollaboModeViewBase;->getView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 273
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 274
    iget v1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    int-to-float v0, v0

    sub-float/2addr v1, v0

    iput v1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    :cond_4
    :goto_1
    return-void
.end method

.method chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;
    .locals 3

    .line 642
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 643
    iget-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Rect;

    .line 645
    invoke-static {v1, v0}, Landroid/graphics/Rect;->intersects(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 646
    invoke-virtual {p0, p2, v1, v0}, Lcom/metamoji/ui/help/HelpController;->dirFunc(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v0

    .line 647
    invoke-virtual {p0, v0, p2}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v0

    .line 648
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    return-object v0

    .line 654
    :cond_1
    iget p1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxy:F

    iget p2, v0, Landroid/graphics/Rect;->bottom:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-ltz p1, :cond_3

    iget p1, p0, Lcom/metamoji/ui/help/HelpController;->m_minx:F

    iget p2, v0, Landroid/graphics/Rect;->left:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/metamoji/ui/help/HelpController;->m_miny:F

    iget p2, v0, Landroid/graphics/Rect;->top:I

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-gtz p1, :cond_3

    iget p1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    iget p2, v0, Landroid/graphics/Rect;->right:I

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gez p1, :cond_2

    goto :goto_0

    :cond_2
    return-object v0

    .line 655
    :cond_3
    :goto_0
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    return-object p1
.end method

.method chkUiArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 3

    .line 622
    iget v0, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    iget v1, p1, Landroid/graphics/Rect;->right:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_0

    .line 623
    iget v0, p0, Lcom/metamoji/ui/help/HelpController;->m_maxx:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-int v0, v0

    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->MoveRect(Landroid/graphics/Rect;II)V

    .line 626
    :cond_0
    iget v0, p1, Landroid/graphics/Rect;->left:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/help/HelpController;->m_minx:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    float-to-int v0, v1

    .line 628
    iget v1, p1, Landroid/graphics/Rect;->top:I

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->MoveRect(Landroid/graphics/Rect;II)V

    .line 630
    :cond_1
    iget v0, p1, Landroid/graphics/Rect;->top:I

    int-to-float v0, v0

    iget v1, p0, Lcom/metamoji/ui/help/HelpController;->m_miny:F

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 632
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/metamoji/ui/help/HelpController;->m_miny:F

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->MoveRect(Landroid/graphics/Rect;II)V

    .line 634
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/help/HelpController;->m_maxy:F

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 636
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p0, Lcom/metamoji/ui/help/HelpController;->m_maxy:F

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    float-to-int v1, v1

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/flexible/FxManager;->MoveRect(Landroid/graphics/Rect;II)V

    :cond_3
    return-object p1
.end method

.method clearData()V
    .locals 1

    .line 102
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 103
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    return-void
.end method

.method dirFunc(ILandroid/graphics/Rect;Landroid/graphics/Rect;)Landroid/graphics/Rect;
    .locals 2

    .line 661
    sget v0, Lcom/metamoji/ui/help/HelpController;->HC_DIR_DOWN:I

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    .line 662
    iget p1, p2, Landroid/graphics/Rect;->bottom:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 663
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object p3

    .line 664
    :cond_0
    sget v0, Lcom/metamoji/ui/help/HelpController;->HC_DIR_RIGHT:I

    if-ne p1, v0, :cond_1

    .line 665
    iget p1, p2, Landroid/graphics/Rect;->right:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    .line 666
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object p3

    .line 667
    :cond_1
    sget v0, Lcom/metamoji/ui/help/HelpController;->HC_DIR_UP:I

    if-ne p1, v0, :cond_2

    .line 669
    iget p1, p2, Landroid/graphics/Rect;->top:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->height()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iget p2, p3, Landroid/graphics/Rect;->top:I

    sub-int/2addr p1, p2

    .line 670
    invoke-virtual {p3, v1, p1}, Landroid/graphics/Rect;->offset(II)V

    return-object p3

    .line 673
    :cond_2
    iget p1, p2, Landroid/graphics/Rect;->left:I

    invoke-virtual {p3}, Landroid/graphics/Rect;->width()I

    move-result p2

    sub-int/2addr p1, p2

    add-int/lit8 p1, p1, -0x1

    iget p2, p3, Landroid/graphics/Rect;->left:I

    sub-int/2addr p1, p2

    .line 674
    invoke-virtual {p3, p1, v1}, Landroid/graphics/Rect;->offset(II)V

    return-object p3
.end method

.method public drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 3

    .line 222
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_2

    .line 224
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/help/HelpItem;

    if-nez v1, :cond_0

    goto :goto_1

    .line 228
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/help/HelpItem;->isVisible()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 229
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v2}, Lcom/metamoji/ui/CustomHelpView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v1, p1, p2, v2}, Lcom/metamoji/ui/help/HelpItem;->drawRect(Landroid/graphics/Canvas;Landroid/graphics/Rect;Landroid/content/Context;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method getHelpItemList()Ljava/util/ArrayList;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/help/HelpItem;",
            ">;"
        }
    .end annotation

    .line 285
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->makeChkList()Ljava/util/ArrayList;

    move-result-object v0

    .line 286
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->_fxmanager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/flexible/FxManager;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 288
    :cond_0
    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxManager;->getUiPartList()Ljava/util/ArrayList;

    move-result-object v2

    .line 289
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 290
    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/flexible/FxItem;

    .line 292
    iget-object v5, v4, Lcom/metamoji/ui/flexible/FxItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    if-ltz v5, :cond_1

    .line 293
    new-instance v5, Lcom/metamoji/ui/help/HelpItem;

    invoke-direct {v5, v4}, Lcom/metamoji/ui/help/HelpItem;-><init>(Lcom/metamoji/ui/flexible/FxItem;)V

    .line 294
    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 299
    :cond_2
    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_CREATE_NOTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_3

    .line 300
    invoke-virtual {v1}, Lcom/metamoji/ui/flexible/FxManager;->GetActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 303
    invoke-static {v0}, Lcom/metamoji/noteanytime/MainActivity;->getNoteListViewFragment(Landroidx/fragment/app/FragmentActivity;)Lcom/metamoji/ui/cabinet/NoteListViewFragment;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 305
    invoke-virtual {v0}, Lcom/metamoji/ui/cabinet/NoteListViewFragment;->getNewNoteView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 307
    new-instance v1, Lcom/metamoji/ui/help/HelpItem;

    sget-object v2, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_CABINET_CREATE_NOTE:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    invoke-direct {v1, v2}, Lcom/metamoji/ui/help/HelpItem;-><init>(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    .line 308
    iput-object v0, v1, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    .line 309
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, v1, Lcom/metamoji/ui/help/HelpItem;->anchorRect:Landroid/graphics/Rect;

    .line 310
    sget-object v0, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    iput-object v0, v1, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    iput-object v0, v1, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 312
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v3
.end method

.method public getView()Landroid/view/View;
    .locals 1

    .line 923
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    return-object v0
.end method

.method public getVisibleList()[I
    .locals 4

    .line 927
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v1, v0, [I

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_0

    .line 929
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v3}, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->intValue()I

    move-result v3

    aput v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method helpPageKey(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/lang/String;
    .locals 1

    .line 791
    sget-object v0, Lcom/metamoji/ui/help/HelpController$5;->$SwitchMap$com$metamoji$ui$flexible$FxManagerDef$FxId:[I

    invoke-virtual {p1}, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    packed-switch p1, :pswitch_data_0

    const/4 p1, 0x0

    return-object p1

    .line 873
    :pswitch_0
    const-string p1, "class_info"

    return-object p1

    .line 870
    :pswitch_1
    const-string p1, "create_class_note"

    return-object p1

    .line 867
    :pswitch_2
    const-string p1, "class_mode_chg"

    return-object p1

    .line 864
    :pswitch_3
    const-string p1, "class_page_chg"

    return-object p1

    .line 861
    :pswitch_4
    const-string p1, "class_layer_chg"

    return-object p1

    .line 858
    :pswitch_5
    const-string p1, "cabinet_shareview"

    return-object p1

    .line 855
    :pswitch_6
    const-string p1, "cabinet_view_change"

    return-object p1

    .line 852
    :pswitch_7
    const-string p1, "collabo_bar_open_btn"

    return-object p1

    .line 848
    :pswitch_8
    const-string p1, "collabo_chat_view"

    return-object p1

    .line 845
    :pswitch_9
    const-string p1, "collabo_user_view"

    return-object p1

    .line 842
    :pswitch_a
    const-string p1, "collabo_mode_chg_btn"

    return-object p1

    .line 838
    :pswitch_b
    const-string p1, "collabo_new_note"

    return-object p1

    .line 835
    :pswitch_c
    const-string p1, "collabo_menu"

    return-object p1

    .line 832
    :pswitch_d
    const-string p1, "cabinet_edit_btn"

    return-object p1

    .line 829
    :pswitch_e
    const-string p1, "cabinet_search"

    return-object p1

    .line 826
    :pswitch_f
    const-string p1, "cabinet_sort_btn"

    return-object p1

    .line 823
    :pswitch_10
    const-string p1, "cabinet_menu"

    return-object p1

    .line 820
    :pswitch_11
    const-string p1, "cabinet_sync_btn"

    return-object p1

    .line 817
    :pswitch_12
    const-string p1, "cabinet_create_note"

    return-object p1

    .line 814
    :pswitch_13
    const-string p1, "cabinet_add_menu"

    return-object p1

    .line 811
    :pswitch_14
    const-string p1, "page_tab"

    return-object p1

    .line 808
    :pswitch_15
    const-string p1, "hide_bar"

    return-object p1

    .line 805
    :pswitch_16
    const-string p1, "detailwindow"

    return-object p1

    .line 802
    :pswitch_17
    const-string/jumbo p1, "wristguard"

    return-object p1

    .line 799
    :pswitch_18
    const-string p1, "editor_menu"

    return-object p1

    .line 796
    :pswitch_19
    const-string/jumbo p1, "send_menu"

    return-object p1

    .line 793
    :pswitch_1a
    const-string p1, "back_cabinet"

    return-object p1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
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

.method public hideHelp()V
    .locals 2

    .line 900
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 903
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    sget-object v1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 906
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->clearData()V

    .line 907
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 909
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->HideAll()V

    :cond_2
    :goto_0
    return-void
.end method

.method public isShown()Z
    .locals 2

    .line 107
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 110
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    return v1
.end method

.method layout()I
    .locals 10

    .line 424
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->calcAvoidArea()V

    .line 427
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->getHelpItemList()Ljava/util/ArrayList;

    move-result-object v0

    .line 428
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 429
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    iget-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    invoke-virtual {v2, v3, v4}, Lcom/metamoji/ui/help/HelpItem;->layout(Landroid/view/View;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)Landroid/graphics/Rect;

    goto :goto_0

    .line 431
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 432
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 433
    iget-object v3, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v4, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-ne v3, v4, :cond_1

    .line 434
    iget-object v2, v2, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    .line 435
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_1

    .line 439
    :cond_2
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-static {v3, v2, v4}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    .line 440
    new-instance v4, Landroid/graphics/RectF;

    iget v5, v3, Landroid/graphics/PointF;->x:F

    iget v6, v3, Landroid/graphics/PointF;->y:F

    iget v7, v3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v8

    int-to-float v8, v8

    add-float/2addr v7, v8

    iget v3, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v3, v2

    invoke-direct {v4, v5, v6, v7, v3}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 441
    new-instance v2, Landroid/graphics/PointF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v4}, Landroid/graphics/RectF;->centerY()F

    move-result v5

    invoke-direct {v2, v3, v5}, Landroid/graphics/PointF;-><init>(FF)V

    .line 442
    iget v3, v2, Landroid/graphics/PointF;->x:F

    const/high16 v5, 0x41a00000    # 20.0f

    sub-float/2addr v3, v5

    iput v3, v4, Landroid/graphics/RectF;->left:F

    .line 443
    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v5

    iput v2, v4, Landroid/graphics/RectF;->top:F

    .line 444
    iget v2, v4, Landroid/graphics/RectF;->left:F

    const/high16 v3, 0x42200000    # 40.0f

    add-float/2addr v2, v3

    iput v2, v4, Landroid/graphics/RectF;->right:F

    .line 445
    iget v2, v4, Landroid/graphics/RectF;->top:F

    add-float/2addr v2, v3

    iput v2, v4, Landroid/graphics/RectF;->bottom:F

    .line 446
    iget-object v2, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    new-instance v3, Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/RectF;->left:F

    float-to-int v5, v5

    iget v6, v4, Landroid/graphics/RectF;->top:F

    float-to-int v6, v6

    iget v7, v4, Landroid/graphics/RectF;->right:F

    float-to-int v7, v7

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    float-to-int v4, v4

    invoke-direct {v3, v5, v6, v7, v4}, Landroid/graphics/Rect;-><init>(IIII)V

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 450
    :cond_3
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_mazecRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_4

    .line 451
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/metamoji/ui/help/HelpController;->m_mazecRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 455
    :cond_4
    new-instance v1, Lcom/metamoji/ui/help/HelpItemSortComparator;

    invoke-direct {v1}, Lcom/metamoji/ui/help/HelpItemSortComparator;-><init>()V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 457
    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    const/4 v1, 0x0

    if-nez v0, :cond_5

    return v1

    .line 462
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 463
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->layoutFin(Z)V

    .line 464
    iget-object v3, v2, Lcom/metamoji/ui/help/HelpItem;->uiPartView:Landroid/view/View;

    .line 465
    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-eqz v4, :cond_7

    .line 466
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_2

    .line 469
    :cond_7
    new-instance v4, Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v5

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v6

    invoke-direct {v4, v1, v1, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    iget-object v5, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-direct {p0, v4, v3, v5}, Lcom/metamoji/ui/help/HelpController;->convertRect(Landroid/graphics/Rect;Landroid/view/View;Landroid/view/View;)Landroid/graphics/Rect;

    move-result-object v3

    .line 470
    new-instance v4, Landroid/graphics/Point;

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v3}, Landroid/graphics/Rect;->centerY()I

    move-result v3

    invoke-direct {v4, v5, v3}, Landroid/graphics/Point;-><init>(II)V

    .line 471
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpController;->m_mazecRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v6, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 472
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_2

    .line 473
    :cond_8
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpController;->m_styleBarRect:Landroid/graphics/Rect;

    iget v5, v4, Landroid/graphics/Point;->x:I

    iget v4, v4, Landroid/graphics/Point;->y:I

    invoke-virtual {v3, v5, v4}, Landroid/graphics/Rect;->contains(II)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 474
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_2

    .line 478
    :cond_9
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_a
    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 479
    iget-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v4, v5, :cond_b

    goto :goto_3

    .line 482
    :cond_b
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_a

    .line 483
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v4

    .line 484
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/help/HelpController;->chkUiArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 485
    sget v6, Lcom/metamoji/ui/help/HelpController;->HC_DIR_DOWN:I

    invoke-virtual {p0, v5, v6}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 487
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_c

    .line 488
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_3

    .line 490
    :cond_c
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_d

    .line 491
    invoke-virtual {v2, v5}, Lcom/metamoji/ui/help/HelpItem;->setRect(Landroid/graphics/Rect;)V

    .line 493
    :cond_d
    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 494
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/help/HelpItem;->layoutFin(Z)V

    goto :goto_3

    .line 499
    :cond_e
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_f
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 500
    iget-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v4, v5, :cond_10

    goto :goto_4

    .line 503
    :cond_10
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_f

    .line 504
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v4

    .line 505
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/help/HelpController;->chkUiArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 506
    sget v6, Lcom/metamoji/ui/help/HelpController;->HC_DIR_UP:I

    invoke-virtual {p0, v5, v6}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 507
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_11

    .line 508
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_4

    .line 510
    :cond_11
    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_12

    .line 511
    invoke-virtual {v2, v5}, Lcom/metamoji/ui/help/HelpItem;->setRect(Landroid/graphics/Rect;)V

    .line 513
    :cond_12
    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 515
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/help/HelpItem;->layoutFin(Z)V

    goto :goto_4

    .line 520
    :cond_13
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_14
    :goto_5
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 521
    iget-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v4, v5, :cond_15

    goto :goto_5

    .line 524
    :cond_15
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_14

    .line 525
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v4

    .line 526
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/help/HelpController;->chkUiArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v5

    .line 527
    sget v6, Lcom/metamoji/ui/help/HelpController;->HC_DIR_LEFT:I

    invoke-virtual {p0, v5, v6}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v6

    .line 528
    sget v7, Lcom/metamoji/ui/help/HelpController;->HC_DIR_DOWN:I

    invoke-virtual {p0, v5, v7}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v5

    .line 530
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_16

    .line 531
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_5

    .line 533
    :cond_16
    invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-eqz v7, :cond_17

    goto :goto_6

    .line 535
    :cond_17
    invoke-virtual {v6}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_18

    .line 536
    iget v7, v4, Landroid/graphics/Rect;->left:I

    iget v8, v6, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v7

    .line 537
    iget v8, v5, Landroid/graphics/Rect;->top:I

    iget v9, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v8, v9

    invoke-static {v8}, Ljava/lang/Math;->abs(I)I

    move-result v8

    if-ge v7, v8, :cond_18

    goto :goto_6

    :cond_18
    move-object v6, v5

    .line 542
    :goto_6
    invoke-virtual {v4, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_19

    .line 543
    invoke-virtual {v2, v6}, Lcom/metamoji/ui/help/HelpItem;->setRect(Landroid/graphics/Rect;)V

    .line 546
    :cond_19
    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 547
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/help/HelpItem;->layoutFin(Z)V

    goto :goto_5

    .line 551
    :cond_1a
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1b
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1f

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 552
    iget-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorState:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v5, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->CENTER:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    if-eq v4, v5, :cond_1c

    goto :goto_7

    :cond_1c
    const/4 v4, 0x4

    .line 555
    new-array v5, v4, [Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    sget-object v6, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->TOP:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    aput-object v6, v5, v1

    sget-object v6, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->BOTTOM:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    aput-object v6, v5, v3

    const/4 v6, 0x2

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->RIGHT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    aput-object v7, v5, v6

    const/4 v6, 0x3

    sget-object v7, Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;->LEFT:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    aput-object v7, v5, v6

    .line 557
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->isVisible()Z

    move-result v6

    if-eqz v6, :cond_1b

    move v6, v1

    :goto_8
    if-ge v6, v4, :cond_1e

    .line 559
    iget-object v7, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    aget-object v8, v5, v6

    invoke-virtual {v2, v7, v8}, Lcom/metamoji/ui/help/HelpItem;->layout(Landroid/view/View;Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;)Landroid/graphics/Rect;

    .line 560
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->frame()Landroid/graphics/Rect;

    move-result-object v7

    .line 561
    invoke-virtual {p0, v7}, Lcom/metamoji/ui/help/HelpController;->chkUiArea(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v7

    .line 562
    invoke-virtual {p0, v7, v6}, Lcom/metamoji/ui/help/HelpController;->chkIntersets(Landroid/graphics/Rect;I)Landroid/graphics/Rect;

    move-result-object v7

    .line 563
    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_1d

    .line 564
    invoke-virtual {v2, v7}, Lcom/metamoji/ui/help/HelpItem;->setRect(Landroid/graphics/Rect;)V

    .line 566
    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->m_escapeViews:Ljava/util/ArrayList;

    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    aget-object v4, v5, v6

    iput-object v4, v2, Lcom/metamoji/ui/help/HelpItem;->anchorStateReal:Lcom/metamoji/ui/flexible/FxManager$FxAnchorState;

    .line 568
    invoke-virtual {v2, v3}, Lcom/metamoji/ui/help/HelpItem;->layoutFin(Z)V

    goto :goto_9

    :cond_1d
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 572
    :cond_1e
    :goto_9
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->layoutFin()Z

    move-result v4

    if-nez v4, :cond_1b

    .line 573
    invoke-virtual {v2, v1}, Lcom/metamoji/ui/help/HelpItem;->enabled(Z)V

    goto :goto_7

    .line 579
    :cond_1f
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_helpList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_20
    :goto_a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_22

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/help/HelpItem;

    .line 580
    invoke-virtual {v2}, Lcom/metamoji/ui/help/HelpItem;->layoutFin()Z

    move-result v3

    if-eqz v3, :cond_20

    .line 581
    iget-object v3, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/help/HelpItem;->layoutButton(Landroid/widget/FrameLayout;)Landroid/view/View;

    move-result-object v3

    if-eqz v3, :cond_21

    .line 583
    iget-object v2, v2, Lcom/metamoji/ui/help/HelpItem;->fxid:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    .line 584
    new-instance v4, Lcom/metamoji/ui/help/HelpController$3;

    invoke-direct {v4, p0, v2}, Lcom/metamoji/ui/help/HelpController$3;-><init>(Lcom/metamoji/ui/help/HelpController;Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_21
    add-int/lit8 v1, v1, 0x1

    goto :goto_a

    :cond_22
    return v1
.end method

.method linktap(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)V
    .locals 1

    .line 605
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/help/HelpController;->helpPageKey(Lcom/metamoji/ui/flexible/FxManagerDef$FxId;)Ljava/lang/String;

    move-result-object p1

    .line 606
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->_fxmanager:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/flexible/FxManager;

    if-eqz v0, :cond_0

    .line 608
    invoke-virtual {v0, p1}, Lcom/metamoji/ui/flexible/FxManager;->showSupportWeb(Ljava/lang/String;)V

    .line 613
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->clearData()V

    .line 614
    sget-object p1, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object p1, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 615
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->HideAll()V

    return-void
.end method

.method makeChkList()Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/metamoji/ui/flexible/FxManagerDef$FxId;",
            ">;"
        }
    .end annotation

    .line 349
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    sget-object v1, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->MMJFX_HELP_GROUP_ALL:Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    const/4 v1, 0x0

    if-gez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 350
    :goto_0
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    move v3, v1

    .line 351
    :goto_1
    iget-object v4, p0, Lcom/metamoji/ui/help/HelpController;->helpgrouplist:[Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    array-length v5, v4

    if-ge v3, v5, :cond_4

    .line 352
    aget-object v4, v4, v3

    if-nez v0, :cond_1

    .line 353
    iget-object v5, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v5, v4}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 355
    :cond_1
    sget-object v5, Lcom/metamoji/ui/help/HelpController$5;->$SwitchMap$com$metamoji$ui$flexible$FxManager$FxHelpId:[I

    invoke-virtual {v4}, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->ordinal()I

    move-result v4

    aget v4, v5, v4

    packed-switch v4, :pswitch_data_0

    const/4 v4, 0x0

    goto :goto_2

    .line 395
    :pswitch_0
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->shareviewguidehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 388
    :pswitch_1
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->sharehelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 379
    :pswitch_2
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->sharenewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 373
    :pswitch_3
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->cabinetbackhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 370
    :pswitch_4
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->cabinetbasehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 367
    :pswitch_5
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->penhelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 361
    :pswitch_6
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->viewhelpforschool:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    goto :goto_2

    .line 357
    :pswitch_7
    sget-object v4, Lcom/metamoji/ui/help/HelpController;->basehelp:[Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    :goto_2
    if-eqz v4, :cond_3

    move v5, v1

    .line 403
    :goto_3
    aget-object v6, v4, v5

    .line 404
    sget-object v7, Lcom/metamoji/ui/flexible/FxManagerDef$FxId;->FXUIID_NON:Lcom/metamoji/ui/flexible/FxManagerDef$FxId;

    if-ne v6, v7, :cond_2

    goto :goto_4

    .line 407
    :cond_2
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    :cond_3
    :goto_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_4
    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
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

.method public restoreVisibleList([I)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 936
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 937
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    aget v2, p1, v0

    invoke-static {v2}, Lcom/metamoji/ui/flexible/FxManager$FxHelpId;->valueOf(I)Lcom/metamoji/ui/flexible/FxManager$FxHelpId;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 939
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpController;->delayDisp()V

    return-void
.end method

.method public showHelp(Lcom/metamoji/ui/flexible/FxManager$FxHelpId;)V
    .locals 1

    .line 85
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-ltz v0, :cond_0

    return-void

    .line 88
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_dispGroup:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 89
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->updateViewPre()V

    .line 91
    invoke-direct {p0}, Lcom/metamoji/ui/help/HelpController;->delayDisp()V

    return-void
.end method

.method public update()V
    .locals 1

    .line 955
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 956
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->updateViewSub()V

    :cond_1
    :goto_0
    return-void
.end method

.method updateView()V
    .locals 1

    .line 154
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 157
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->updateViewSub()V

    :cond_1
    :goto_0
    return-void
.end method

.method updateViewOrShow()V
    .locals 1

    .line 161
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    if-nez v0, :cond_0

    .line 162
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->addSubView()V

    .line 163
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_NON:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->updateViewSub()V

    return-void
.end method

.method updateViewPre()V
    .locals 3

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->getVisibility()I

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 118
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 122
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 126
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 128
    new-instance v1, Lcom/metamoji/ui/help/HelpController$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/help/HelpController$1;-><init>(Lcom/metamoji/ui/help/HelpController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 143
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/CustomHelpView;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_1
    :goto_0
    return-void
.end method

.method updateViewSub()V
    .locals 3

    .line 173
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v0}, Lcom/metamoji/ui/CustomHelpView;->removeAllViews()V

    .line 176
    invoke-virtual {p0}, Lcom/metamoji/ui/help/HelpController;->layout()I

    move-result v0

    if-lez v0, :cond_0

    .line 177
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_WHILE_SHOW:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    .line 180
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    const/4 v1, 0x0

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    const-wide/16 v1, 0xfa

    .line 181
    invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    const/4 v1, 0x1

    .line 182
    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 183
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/CustomHelpView;->setVisibility(I)V

    .line 184
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v1}, Lcom/metamoji/ui/CustomHelpView;->invalidate()V

    .line 185
    new-instance v1, Lcom/metamoji/ui/help/HelpController$2;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/help/HelpController$2;-><init>(Lcom/metamoji/ui/help/HelpController;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 199
    iget-object v1, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/CustomHelpView;->startAnimation(Landroid/view/animation/Animation;)V

    return-void

    .line 208
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_view:Lcom/metamoji/ui/CustomHelpView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/metamoji/ui/CustomHelpView;->setVisibility(I)V

    .line 209
    sget-object v0, Lcom/metamoji/ui/help/HelpController$HelpControllerState;->MMJFX_ENUM_HC_HIDE:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    iput-object v0, p0, Lcom/metamoji/ui/help/HelpController;->m_state:Lcom/metamoji/ui/help/HelpController$HelpControllerState;

    return-void
.end method
