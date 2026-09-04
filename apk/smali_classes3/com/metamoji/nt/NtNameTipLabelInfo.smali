.class public Lcom/metamoji/nt/NtNameTipLabelInfo;
.super Ljava/lang/Object;
.source "NtNameTipLabelInfo.java"


# instance fields
.field private _color:I

.field private _laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

.field private _popupLabel:Landroid/view/View;

.field private _pt:Landroid/graphics/PointF;

.field private _timer:Lcom/metamoji/cm/UiTimer;

.field private _userId:Ljava/lang/String;

.field public lastTick:J

.field public timeoutDuration:D


# direct methods
.method static bridge synthetic -$$Nest$fget_popupLabel(Lcom/metamoji/nt/NtNameTipLabelInfo;)Landroid/view/View;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_popupLabel:Landroid/view/View;

    return-object p0
.end method

.method public constructor <init>()V
    .locals 3

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    .line 30
    iput-wide v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->timeoutDuration:D

    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_userId:Ljava/lang/String;

    .line 37
    new-instance v1, Landroid/graphics/PointF;

    const/4 v2, 0x0

    invoke-direct {v1, v2, v2}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_pt:Landroid/graphics/PointF;

    .line 38
    iput-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_popupLabel:Landroid/view/View;

    .line 39
    iput-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

    const v1, 0x3f25a5a6

    .line 40
    invoke-static {v1, v2, v2, v2}, Landroid/graphics/Color;->argb(FFFF)I

    move-result v1

    iput v1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_color:I

    .line 41
    iput-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_timer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method


# virtual methods
.method public checkTimeout(J)Z
    .locals 4

    const-wide v0, 0x408f400000000000L    # 1000.0

    .line 152
    iget-wide v2, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->timeoutDuration:D

    mul-double/2addr v2, v0

    double-to-long v0, v2

    .line 154
    iget-wide v2, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->lastTick:J

    sub-long/2addr p1, v2

    cmp-long p1, p1, v0

    if-ltz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public checkVisibleLayer()V
    .locals 2

    .line 139
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_popupLabel:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 141
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtNameTipLabelInfo$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtNameTipLabelInfo$1;-><init>(Lcom/metamoji/nt/NtNameTipLabelInfo;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method public clearTimer()V
    .locals 1

    .line 129
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_timer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 130
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_timer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    return-void
.end method

.method public getColor()I
    .locals 1

    .line 59
    iget v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_color:I

    return v0
.end method

.method public getLaserPointerCanvas()Lcom/metamoji/ui/LaserPointerCanvas;
    .locals 1

    .line 77
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

    return-object v0
.end method

.method public getPopupLabel()Landroid/view/View;
    .locals 1

    .line 84
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_popupLabel:Landroid/view/View;

    return-object v0
.end method

.method public getPt()Landroid/graphics/PointF;
    .locals 1

    .line 66
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_pt:Landroid/graphics/PointF;

    return-object v0
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_userId:Ljava/lang/String;

    return-object v0
.end method

.method public getUserName()Ljava/lang/String;
    .locals 4

    .line 100
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->userInfoArray()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 102
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ns/NsCollaboUserInfo;

    .line 103
    iget-object v2, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userId:Ljava/lang/String;

    iget-object v3, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 104
    iget-object v0, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->nickName:Ljava/lang/String;

    .line 107
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 109
    invoke-virtual {v2}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 111
    invoke-virtual {v2}, Lcom/metamoji/nt/NtNoteController;->hiddenStudentName()Z

    move-result v2

    if-eqz v2, :cond_1

    iget v1, v1, Lcom/metamoji/ns/NsCollaboUserInfo;->userMode:I

    and-int/lit8 v1, v1, 0x40

    if-nez v1, :cond_1

    .line 113
    const-string v0, "***"

    :cond_1
    return-object v0

    .line 121
    :cond_2
    const-string v0, ""

    return-object v0
.end method

.method public setColor(I)V
    .locals 0

    .line 63
    iput p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_color:I

    return-void
.end method

.method public setLaserPointerCanvas(Lcom/metamoji/ui/LaserPointerCanvas;)V
    .locals 0

    .line 73
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_laserPointerCanvas:Lcom/metamoji/ui/LaserPointerCanvas;

    return-void
.end method

.method public setPopupLabel(Landroid/view/View;)V
    .locals 0

    .line 91
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_popupLabel:Landroid/view/View;

    return-void
.end method

.method public setPt(Landroid/graphics/PointF;)V
    .locals 0

    .line 69
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_pt:Landroid/graphics/PointF;

    return-void
.end method

.method public setTimer(Lcom/metamoji/cm/UiTimer;)V
    .locals 0

    .line 125
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_timer:Lcom/metamoji/cm/UiTimer;

    return-void
.end method

.method public setUserId(Ljava/lang/String;)V
    .locals 0

    .line 55
    iput-object p1, p0, Lcom/metamoji/nt/NtNameTipLabelInfo;->_userId:Ljava/lang/String;

    return-void
.end method
