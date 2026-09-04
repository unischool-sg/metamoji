.class Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;
.super Landroid/widget/ImageView;
.source "ScrollButtonManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/ScrollButtonManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ScrollButton"
.end annotation


# static fields
.field static final DECELERATE:F = 0.005f

.field private static final TOUCHSTATE_CLICK:I = 0x2

.field private static final TOUCHSTATE_DOWN:I = 0x1

.field private static final TOUCHSTATE_INERTIA:I = 0x5

.field private static final TOUCHSTATE_LONGPRESS:I = 0x4

.field private static final TOUCHSTATE_NONE:I = 0x0

.field private static final TOUCHSTATE_PAN:I = 0x3


# instance fields
.field private _action:I

.field private _gestureDetector:Landroid/view/GestureDetector;

.field private _timerRepeat:Lcom/metamoji/cm/UiTimer;

.field private _touchState:I

.field private _type:I

.field _v:F

.field _vx:F

.field _vy:F

.field private _x:F

.field private _y:F

.field final synthetic this$0:Lcom/metamoji/ui/ScrollButtonManager;


# direct methods
.method static bridge synthetic -$$Nest$fget_timerRepeat(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)Lcom/metamoji/cm/UiTimer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_timerRepeat:Lcom/metamoji/cm/UiTimer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fget_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fput_touchState(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$mfling(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;FF)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->fling(FF)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mmove(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->move(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$monClick(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->onClick()V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/ui/ScrollButtonManager;Landroid/content/Context;I)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x0,
            0x0
        }
        names = {
            null,
            null,
            null
        }
    .end annotation

    .line 1153
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    .line 1154
    invoke-direct {p0, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 1127
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    const/4 v0, 0x0

    .line 1130
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_x:F

    .line 1131
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_y:F

    .line 1139
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    const/4 p1, 0x0

    .line 1141
    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_gestureDetector:Landroid/view/GestureDetector;

    .line 1151
    new-instance v0, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v0}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_timerRepeat:Lcom/metamoji/cm/UiTimer;

    .line 1156
    instance-of v0, p2, Lcom/metamoji/noteanytime/EditorActivity;

    if-eqz v0, :cond_0

    .line 1157
    move-object p1, p2

    check-cast p1, Lcom/metamoji/noteanytime/EditorActivity;

    .line 1159
    :cond_0
    invoke-direct {p0, p3, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->init(ILcom/metamoji/noteanytime/EditorActivity;)V

    return-void
.end method

.method private fling(FF)V
    .locals 8

    float-to-double v0, p1

    float-to-double v2, p2

    .line 1518
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    double-to-float v0, v0

    div-float/2addr p1, v0

    .line 1519
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vx:F

    div-float/2addr p2, v0

    .line 1520
    iput p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_vy:F

    const/high16 p1, 0x447a0000    # 1000.0f

    div-float/2addr v0, p1

    .line 1521
    iput v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_v:F

    const/4 p1, 0x5

    .line 1523
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    .line 1524
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fput_prevTime(Lcom/metamoji/ui/ScrollButtonManager;J)V

    .line 1525
    iget-object v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_timerRepeat:Lcom/metamoji/cm/UiTimer;

    new-instance v3, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;

    invoke-direct {v3, p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$3;-><init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V

    const-wide/16 v4, 0x21

    const-wide/16 v6, 0x21

    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method private init(ILcom/metamoji/noteanytime/EditorActivity;)V
    .locals 6

    .line 1163
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/high16 v0, 0x42700000    # 60.0f

    .line 1166
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    float-to-int v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    .line 1167
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    const/16 v2, 0xf

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eq p1, v4, :cond_2

    const/16 v5, 0xe

    if-eq p1, v3, :cond_1

    const/4 v4, 0x3

    if-eq p1, v4, :cond_0

    .line 1172
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0x9

    .line 1173
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1174
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1175
    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p2}, Lcom/metamoji/ui/ScrollButtonManager;->getZoomBarSpace()I

    move-result p2

    neg-int p2, p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    goto :goto_0

    .line 1192
    :cond_0
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xc

    .line 1193
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1194
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1197
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    const/high16 p2, 0x430d0000    # 141.0f

    .line 1198
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p2, v0

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setX(F)V

    goto :goto_0

    .line 1184
    :cond_1
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v1, v0}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 v0, 0xa

    .line 1185
    invoke-virtual {p1, v0}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1186
    invoke-virtual {p1, v5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1187
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result p2

    if-nez p2, :cond_3

    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    iget p2, p2, Landroid/content/res/Configuration;->orientation:I

    if-ne p2, v4, :cond_3

    const/high16 p2, -0x3de00000    # -40.0f

    .line 1188
    invoke-static {p2}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setX(F)V

    goto :goto_0

    .line 1178
    :cond_2
    new-instance p1, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p1, v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p2, 0xb

    .line 1179
    invoke-virtual {p1, p2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1180
    invoke-virtual {p1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 1181
    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-virtual {p2}, Lcom/metamoji/ui/ScrollButtonManager;->getZoomBarSpace()I

    move-result p2

    neg-int p2, p2

    div-int/2addr p2, v3

    int-to-float p2, p2

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    .line 1202
    :cond_3
    :goto_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1203
    invoke-static {}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$sfgetBUTTON_IMAGE()[[I

    move-result-object p1

    iget p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    aget-object p1, p1, p2

    iget p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    aget p1, p1, p2

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setImageResource(I)V

    .line 1204
    sget-object p1, Landroid/widget/ImageView$ScaleType;->CENTER:Landroid/widget/ImageView$ScaleType;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V

    .line 1206
    new-instance p1, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$1;-><init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 1214
    new-instance p1, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->getContext()Landroid/content/Context;

    move-result-object p2

    new-instance v0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton$2;-><init>(Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;)V

    invoke-direct {p1, p2, v0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_gestureDetector:Landroid/view/GestureDetector;

    const/4 p2, 0x0

    .line 1296
    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->setIsLongpressEnabled(Z)V

    return-void
.end method

.method private move(Z)V
    .locals 2

    .line 1364
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 1375
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mmoveDown(Lcom/metamoji/ui/ScrollButtonManager;Z)V

    return-void

    .line 1372
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mmoveUp(Lcom/metamoji/ui/ScrollButtonManager;Z)V

    return-void

    .line 1369
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mmoveRight(Lcom/metamoji/ui/ScrollButtonManager;Z)V

    return-void

    .line 1366
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0, p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mmoveLeft(Lcom/metamoji/ui/ScrollButtonManager;Z)V

    return-void
.end method

.method private onClick()V
    .locals 3

    .line 1349
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    const/4 v1, 0x2

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 1357
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->pageNew()V

    goto :goto_0

    .line 1354
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->pageJump()V

    goto :goto_0

    .line 1351
    :cond_2
    invoke-direct {p0, v2}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->move(Z)V

    .line 1360
    :goto_0
    iput v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    return-void
.end method

.method private pageJump()V
    .locals 4

    .line 1381
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_2

    const/4 v3, 0x2

    if-eq v0, v3, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 1392
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string/jumbo v1, "top"

    invoke-static {v0, v2, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mchangePage(Lcom/metamoji/ui/ScrollButtonManager;ZLjava/lang/String;)V

    return-void

    .line 1389
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string v2, "bottom"

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mchangePage(Lcom/metamoji/ui/ScrollButtonManager;ZLjava/lang/String;)V

    return-void

    .line 1386
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string v1, "left"

    invoke-static {v0, v2, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mchangePage(Lcom/metamoji/ui/ScrollButtonManager;ZLjava/lang/String;)V

    return-void

    .line 1383
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string/jumbo v2, "right"

    invoke-static {v0, v1, v2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mchangePage(Lcom/metamoji/ui/ScrollButtonManager;ZLjava/lang/String;)V

    return-void
.end method

.method private pageNew()V
    .locals 2

    .line 1398
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_0

    return-void

    .line 1403
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string/jumbo v1, "top"

    invoke-static {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$maddPage(Lcom/metamoji/ui/ScrollButtonManager;Ljava/lang/String;)V

    return-void

    .line 1400
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    const-string v1, "left"

    invoke-static {v0, v1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$maddPage(Lcom/metamoji/ui/ScrollButtonManager;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public cancelTimer()V
    .locals 1

    .line 1550
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_timerRepeat:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    return-void
.end method

.method public checkState(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
    .locals 7

    .line 1415
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$mgetCommandManager(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/nt/NtCommandManager;

    move-result-object v0

    .line 1416
    sget-object v1, Lcom/metamoji/nt/NtCommand;->CMD_CHANGE_VIEW_LOCATION:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, v1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result v1

    .line 1419
    iget v2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    const/4 v5, 0x2

    if-eq v2, v3, :cond_4

    if-eq v2, v5, :cond_2

    const/4 v6, 0x3

    if-eq v2, v6, :cond_0

    goto/16 :goto_3

    .line 1458
    :cond_0
    iget p1, p1, Landroid/graphics/RectF;->bottom:F

    iget p2, p2, Landroid/graphics/RectF;->bottom:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_a

    .line 1459
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_currentPage(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_pages(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p2

    sub-int/2addr p2, v3

    if-ge p1, p2, :cond_1

    .line 1460
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    .line 1466
    :cond_1
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_6

    goto :goto_1

    .line 1448
    :cond_2
    iget p2, p2, Landroid/graphics/RectF;->top:F

    iget p1, p1, Landroid/graphics/RectF;->top:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_a

    .line 1450
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    .line 1453
    :cond_3
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_currentPage(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p1

    if-lez p1, :cond_8

    :goto_0
    move v1, v3

    goto :goto_4

    .line 1431
    :cond_4
    iget p1, p1, Landroid/graphics/RectF;->right:F

    iget p2, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, p2

    if-ltz p1, :cond_a

    .line 1432
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_currentPage(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p1

    iget-object p2, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p2}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_pages(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p2

    sub-int/2addr p2, v3

    if-ge p1, p2, :cond_5

    .line 1433
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_FORW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_b

    goto :goto_1

    .line 1439
    :cond_5
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_NEW_PAGE:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_6

    :goto_1
    move v1, v4

    move v3, v1

    goto :goto_4

    :cond_6
    move v3, v5

    goto :goto_4

    .line 1421
    :cond_7
    iget p2, p2, Landroid/graphics/RectF;->left:F

    iget p1, p1, Landroid/graphics/RectF;->left:F

    cmpl-float p1, p2, p1

    if-ltz p1, :cond_a

    .line 1423
    sget-object p1, Lcom/metamoji/nt/NtCommand;->CMD_PAGE_BACKW:Lcom/metamoji/nt/NtCommand;

    invoke-virtual {v0, p1}, Lcom/metamoji/nt/NtCommandManager;->isCommandEnabled(Lcom/metamoji/nt/NtCommand;)Z

    move-result p1

    if-nez p1, :cond_9

    :cond_8
    :goto_2
    move v1, v4

    goto :goto_4

    .line 1426
    :cond_9
    iget-object p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {p1}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_currentPage(Lcom/metamoji/ui/ScrollButtonManager;)I

    move-result p1

    if-lez p1, :cond_8

    goto :goto_0

    :cond_a
    :goto_3
    move v3, v4

    .line 1475
    :cond_b
    :goto_4
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setAction(I)V

    return v1
.end method

.method public isPageJump()Z
    .locals 1

    .line 1502
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .line 1319
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1321
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->isClickable()Z

    move-result v1

    if-nez v1, :cond_0

    if-nez v0, :cond_0

    .line 1323
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    .line 1326
    :cond_0
    iget-object v1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v1, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq v0, v2, :cond_1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 1330
    :cond_1
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 1331
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setPressed(Z)V

    return v2

    .line 1334
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_timerRepeat:Lcom/metamoji/cm/UiTimer;

    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    .line 1335
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    if-ne v0, v1, :cond_3

    .line 1337
    iget-object v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->this$0:Lcom/metamoji/ui/ScrollButtonManager;

    invoke-static {v0}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$fget_viewport(Lcom/metamoji/ui/ScrollButtonManager;)Lcom/metamoji/df/sprite/Viewport;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/df/sprite/Viewport;->startReboundScroll()Z

    .line 1339
    :cond_3
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_touchState:I

    if-eq v0, v2, :cond_4

    .line 1340
    invoke-virtual {p0, v4}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setPressed(Z)V

    return v2

    .line 1345
    :cond_4
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setAction(I)V
    .locals 1

    .line 1484
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    if-ne p1, v0, :cond_0

    return-void

    .line 1487
    :cond_0
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    .line 1489
    iget p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    goto :goto_0

    .line 1492
    :cond_1
    iget p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_x:F

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setX(F)V

    goto :goto_1

    .line 1490
    :cond_2
    :goto_0
    iget p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_y:F

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setY(F)V

    .line 1494
    :goto_1
    invoke-static {}, Lcom/metamoji/ui/ScrollButtonManager;->-$$Nest$sfgetBUTTON_IMAGE()[[I

    move-result-object p1

    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    aget-object p1, p1, v0

    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_action:I

    aget p1, p1, v0

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setImageResource(I)V

    return-void
.end method

.method public setX(F)V
    .locals 1

    .line 1300
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_x:F

    .line 1302
    iget p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_2

    .line 1303
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->isPageJump()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p1, 0x1

    goto :goto_1

    :cond_2
    const/4 p1, -0x1

    :goto_1
    int-to-float p1, p1

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 1305
    :goto_2
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_x:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setTranslationX(F)V

    return-void
.end method

.method public setY(F)V
    .locals 1

    .line 1309
    iput p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_y:F

    .line 1311
    iget p1, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_type:I

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    .line 1312
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->isPageJump()Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 v0, -0x1

    :cond_2
    int-to-float p1, v0

    const/high16 v0, 0x41c00000    # 24.0f

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    mul-float/2addr p1, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr p1, v0

    .line 1314
    :goto_1
    iget v0, p0, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->_y:F

    add-float/2addr v0, p1

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/ScrollButtonManager$ScrollButton;->setTranslationY(F)V

    return-void
.end method
