.class public Lcom/metamoji/forSchool/monitoring/ScMonitorView;
.super Ljava/lang/Object;
.source "ScMonitorView.java"


# static fields
.field private static final RECEIVING_INDICATOR_DELAY:I = 0xbb8

.field private static final REVALIDATETARGET_BACK:I = 0x1

.field private static final REVALIDATETARGET_FRONT:I = 0x4

.field private static final REVALIDATETARGET_MIDDLE:I = 0x2

.field private static final REVALIDATETARGET_NONE:I = 0x0

.field private static final REVALIDATE_DELAY:I = 0x3e8

.field public static final THUMBNAIL_MAX_SCALE:F = 1.0f


# instance fields
.field public baseViewAlpha:F

.field public baseViewBgColor:I

.field public doItBtnText:Ljava/lang/String;

.field public gestureDetector:Landroid/view/GestureDetector;

.field public helpBtnText:Ljava/lang/String;

.field public isDragging:Z

.field public isReceivingData:Z

.field public isSelected:Z

.field private m_classNumber:Ljava/lang/String;

.field private m_doItUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_helpUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_layerId:Ljava/lang/String;

.field private m_layerName:Ljava/lang/String;

.field private m_loginName:Ljava/lang/String;

.field private m_memberList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field private m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

.field private m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

.field private m_notYetUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_offlineUserList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private m_pageId:Ljava/lang/String;

.field private m_receivingTimer:Ljava/util/Timer;

.field private m_revalidateTarget:I

.field private m_revalidateTimer:Ljava/util/Timer;

.field private m_status:Ljava/lang/String;

.field private m_thumbHeight:D

.field private m_thumbWidth:D

.field private m_userId:Ljava/lang/String;

.field private m_visibleNameLabel:Z

.field public notYetBtnText:Ljava/lang/String;

.field public rect:Landroid/graphics/RectF;

.field public resolution:F

.field public thumbnail:Landroid/graphics/Bitmap;


# direct methods
.method static bridge synthetic -$$Nest$mclearMonitorInfoViewControoler(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->clearMonitorInfoViewControoler()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mhandleReceivingTimer(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->handleReceivingTimer(Z)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/forSchool/monitoring/ScMonitorList;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/forSchool/monitoring/ScMonitorList;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 107
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const-string v0, "offline"

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    const/4 v0, 0x0

    .line 80
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isDragging:Z

    .line 81
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isSelected:Z

    .line 82
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isReceivingData:Z

    .line 83
    sget v1, Lcom/metamoji/noteanytime/R$color;->transparent:I

    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewBgColor:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 84
    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewAlpha:F

    .line 85
    const-string v2, ""

    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->doItBtnText:Ljava/lang/String;

    .line 86
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notYetBtnText:Ljava/lang/String;

    .line 87
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->helpBtnText:Ljava/lang/String;

    const/4 v2, 0x0

    .line 88
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    .line 89
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->rect:Landroid/graphics/RectF;

    .line 90
    iput v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->resolution:F

    const-wide/16 v3, 0x0

    .line 92
    iput-wide v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    .line 93
    iput-wide v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    .line 95
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    .line 97
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTarget:I

    .line 98
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    .line 99
    iput-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_receivingTimer:Ljava/util/Timer;

    const/4 v0, 0x1

    .line 110
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_visibleNameLabel:Z

    .line 112
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    .line 113
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_pageId:Ljava/lang/String;

    .line 114
    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerId:Ljava/lang/String;

    .line 115
    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerName:Ljava/lang/String;

    .line 116
    iput-object p5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_memberList:Ljava/util/List;

    .line 117
    iput-object p6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_classNumber:Ljava/lang/String;

    .line 118
    iput-object p7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_loginName:Ljava/lang/String;

    .line 119
    iput-object p8, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_userId:Ljava/lang/String;

    if-eqz p5, :cond_2

    .line 122
    invoke-interface {p5}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_2

    .line 123
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 124
    invoke-interface {p5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/util/Map;

    .line 125
    const-string p4, "user-name"

    invoke-static {p3, p4}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/String;

    if-eqz p3, :cond_0

    .line 127
    invoke-interface {p1, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 130
    :cond_1
    invoke-virtual {p0, v2, v2, v2, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->setGroupStatus(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 132
    :cond_2
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateStatusBtnNum()V

    return-void
.end method

.method private clearMonitorInfoViewControoler()V
    .locals 1

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    return-void
.end method

.method private clearReceivingTimer()V
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_receivingTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 165
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    :cond_0
    const/4 v0, 0x0

    .line 167
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_receivingTimer:Ljava/util/Timer;

    return-void
.end method

.method private handleReceivingTimer(Z)V
    .locals 2

    .line 204
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_receivingTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    goto :goto_0

    .line 209
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->clearReceivingTimer()V

    const/4 v0, 0x0

    .line 212
    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isReceivingData:Z

    .line 215
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 217
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    .line 218
    invoke-interface {v0}, Lcom/metamoji/nt/INtAppFrame;->getDirectionManager()Lcom/metamoji/ns/direction/NsDirectionManager;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 220
    invoke-virtual {v0}, Lcom/metamoji/ns/direction/NsDirectionManager;->receiveInvoker()Lcom/metamoji/ns/direction/NsRecvInvoker;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$3;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    invoke-virtual {v0, v1}, Lcom/metamoji/ns/direction/NsRecvInvoker;->invoke(Ljava/lang/Runnable;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private revalidateInner(Z)V
    .locals 14

    .line 327
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-nez v0, :cond_0

    goto/16 :goto_6

    :cond_0
    if-nez p1, :cond_1

    .line 332
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    if-eqz v2, :cond_1

    goto/16 :goto_6

    .line 337
    :cond_1
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->checkVisibleActually(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_6

    .line 347
    :cond_2
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    .line 348
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v2

    .line 349
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getPageController()Lcom/metamoji/nt/NtPageController;

    move-result-object v4

    .line 350
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPageId()Ljava/lang/String;

    move-result-object v3

    .line 354
    iget-object v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_pageId:Ljava/lang/String;

    const-wide/16 v6, 0x0

    const/4 v8, 0x1

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    if-eqz v5, :cond_8

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto/16 :goto_2

    .line 406
    :cond_3
    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_pageId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtNoteController;->pageFromPageId(Ljava/lang/String;)Lcom/metamoji/nt/NtPageController;

    move-result-object v2

    if-nez v2, :cond_4

    goto/16 :goto_6

    .line 410
    :cond_4
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getDocument()Lcom/metamoji/nt/NtDocument;

    move-result-object v0

    .line 411
    const-string v3, "MMJNtDocumentSettings"

    invoke-virtual {v0, v3}, Lcom/metamoji/nt/NtDocument;->getDocumentSettingsForType(Ljava/lang/String;)Lcom/metamoji/df/controller/ISettings;

    move-result-object v0

    check-cast v0, Lcom/metamoji/nt/NtDocumentSettings;

    .line 412
    invoke-virtual {v0}, Lcom/metamoji/nt/NtDocumentSettings;->hasFrontCover()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_5

    const/4 v0, -0x1

    goto :goto_0

    :cond_5
    move v0, v3

    .line 414
    :goto_0
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPageIndex()I

    move-result v4

    add-int/2addr v4, v8

    add-int/2addr v4, v0

    move v0, v4

    .line 415
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v4

    .line 416
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v5

    .line 417
    iget v8, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->resolution:F

    iget-wide v11, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    double-to-float v11, v11

    div-float/2addr v11, v4

    iget-wide v12, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    double-to-float v12, v12

    div-float/2addr v12, v5

    invoke-static {v11, v12}, Ljava/lang/Math;->max(FF)F

    move-result v11

    mul-float/2addr v8, v11

    cmpl-float v11, v8, v9

    if-lez v11, :cond_6

    .line 420
    const-string v8, "revalidateInner:scale3"

    invoke-static {v8}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    goto :goto_1

    :cond_6
    move v9, v8

    :goto_1
    cmpl-float v8, v5, v10

    if-lez v8, :cond_f

    cmpl-float v8, v4, v10

    if-lez v8, :cond_f

    float-to-double v10, v9

    cmpl-double v6, v10, v6

    if-lez v6, :cond_f

    .line 424
    monitor-enter p0

    .line 427
    :try_start_0
    new-instance v6, Lcom/metamoji/cm/Size;

    invoke-direct {v6}, Lcom/metamoji/cm/Size;-><init>()V

    .line 428
    invoke-virtual {v2}, Lcom/metamoji/nt/NtPageController;->getThumbnail()Lcom/metamoji/cm/Blob;

    move-result-object v2

    invoke-static {v2, v3, v3, v6}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 429
    iget-wide v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    move v2, v9

    iget-wide v9, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    move-object v1, p0

    move v3, v0

    invoke-virtual/range {v1 .. v10}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->makeOtherPageImage(FIFFLandroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    .line 430
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    if-eqz v6, :cond_7

    .line 436
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v0

    if-nez v0, :cond_7

    .line 437
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 439
    :cond_7
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 356
    :cond_8
    :goto_2
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->isPurged()Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_9

    goto/16 :goto_6

    .line 360
    :cond_9
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    if-eq v0, v8, :cond_d

    .line 361
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getSchoolPageType()I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_a

    goto :goto_4

    .line 383
    :cond_a
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getMonitorViewThumbnailCache()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_c

    .line 385
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    .line 386
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    .line 387
    iget v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->resolution:F

    iget-wide v5, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    double-to-float v5, v5

    div-float/2addr v5, v0

    iget-wide v6, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    double-to-float v6, v6

    div-float/2addr v6, v2

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v3, v5

    cmpl-float v5, v3, v9

    if-lez v5, :cond_b

    .line 390
    const-string v3, "revalidateInner:scale2"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move v5, v9

    goto :goto_3

    :cond_b
    move v5, v3

    .line 393
    :goto_3
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Lcom/metamoji/cm/SizeF;

    invoke-direct {v7, v0, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerId:Ljava/lang/String;

    const/4 v8, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 394
    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->setMonitorViewThumbnailCache(Landroid/graphics/Bitmap;)V

    .line 397
    :cond_c
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    .line 398
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    return-void

    .line 363
    :cond_d
    :goto_4
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperWidth()F

    move-result v0

    .line 364
    invoke-virtual {v4}, Lcom/metamoji/nt/NtPageController;->getPaperHeight()F

    move-result v2

    .line 365
    iget v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->resolution:F

    iget-wide v11, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    double-to-float v5, v11

    div-float/2addr v5, v0

    iget-wide v11, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    double-to-float v8, v11

    div-float/2addr v8, v2

    invoke-static {v5, v8}, Ljava/lang/Math;->max(FF)F

    move-result v5

    mul-float/2addr v3, v5

    cmpl-float v5, v3, v9

    if-lez v5, :cond_e

    .line 368
    const-string v3, "revalidateInner:scale1"

    invoke-static {v3}, Lcom/metamoji/cm/CmLog;->debug(Ljava/lang/String;)V

    move v5, v9

    goto :goto_5

    :cond_e
    move v5, v3

    :goto_5
    cmpl-float v3, v2, v10

    if-lez v3, :cond_f

    cmpl-float v3, v0, v10

    if-lez v3, :cond_f

    float-to-double v8, v5

    cmpl-double v3, v8, v6

    if-lez v3, :cond_f

    .line 371
    monitor-enter p0

    .line 373
    :try_start_1
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v10, v10}, Landroid/graphics/PointF;-><init>(FF)V

    new-instance v7, Lcom/metamoji/cm/SizeF;

    invoke-direct {v7, v0, v2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    iget-object v10, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerId:Ljava/lang/String;

    const/4 v8, 0x0

    const/4 v9, 0x0

    invoke-virtual/range {v4 .. v10}, Lcom/metamoji/nt/NtPageController;->takeSnapshotForSchool(FLandroid/graphics/PointF;Lcom/metamoji/cm/SizeF;Lcom/metamoji/df/sprite/PaintSolid;ZLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    .line 374
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    .line 380
    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    throw v0

    :cond_f
    :goto_6
    return-void
.end method

.method private updateStatusBtnNum()V
    .locals 3

    .line 784
    sget v0, Lcom/metamoji/noteanytime/R$string;->School_MonitorInfoDlg_UserNum:I

    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->loadString(I)Ljava/lang/String;

    move-result-object v0

    .line 785
    const-string v1, "%ld"

    const-string v2, "%d"

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    .line 787
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_doItUserList:Ljava/util/List;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->doItBtnText:Ljava/lang/String;

    .line 788
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_notYetUserList:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notYetBtnText:Ljava/lang/String;

    .line 789
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_helpUserList:Ljava/util/List;

    if-eqz v1, :cond_2

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    :cond_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    filled-new-array {v1}, [Ljava/lang/Object;

    move-result-object v1

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->helpBtnText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public closeMonitorInfoDialog()V
    .locals 1

    .line 590
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    if-eqz v0, :cond_0

    .line 591
    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method public endReceiveData(Z)V
    .locals 3

    .line 189
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$2;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    .line 195
    new-instance p1, Ljava/util/Timer;

    invoke-direct {p1}, Ljava/util/Timer;-><init>()V

    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_receivingTimer:Ljava/util/Timer;

    const-wide/16 v1, 0xbb8

    .line 197
    :try_start_0
    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method

.method public getClassNumber()Ljava/lang/String;
    .locals 1

    .line 714
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_classNumber:Ljava/lang/String;

    return-object v0
.end method

.method public getDoItUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 764
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_doItUserList:Ljava/util/List;

    return-object v0
.end method

.method public getHelpUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 768
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_helpUserList:Ljava/util/List;

    return-object v0
.end method

.method public getLayerId()Ljava/lang/String;
    .locals 1

    .line 693
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerId:Ljava/lang/String;

    return-object v0
.end method

.method public getLayerName()Ljava/lang/String;
    .locals 1

    .line 700
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerName:Ljava/lang/String;

    return-object v0
.end method

.method public getLoginName()Ljava/lang/String;
    .locals 1

    .line 716
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_loginName:Ljava/lang/String;

    return-object v0
.end method

.method public getMemberList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 707
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_memberList:Ljava/util/List;

    return-object v0
.end method

.method public getNotYetUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 772
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_notYetUserList:Ljava/util/List;

    return-object v0
.end method

.method public getOfflineUserList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 776
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_offlineUserList:Ljava/util/List;

    return-object v0
.end method

.method public getPageId()Ljava/lang/String;
    .locals 1

    .line 686
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_pageId:Ljava/lang/String;

    return-object v0
.end method

.method public getStatus()Ljava/lang/String;
    .locals 1

    .line 738
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    return-object v0
.end method

.method getTextSize(Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;
    .locals 2

    .line 560
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    .line 561
    invoke-virtual {v0, p2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 562
    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result p1

    .line 564
    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object p2

    .line 565
    iget v0, p2, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 566
    iget p2, p2, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 568
    new-instance v1, Lcom/metamoji/cm/SizeF;

    sub-float/2addr p2, v0

    invoke-direct {v1, p1, p2}, Lcom/metamoji/cm/SizeF;-><init>(FF)V

    return-object v1
.end method

.method public getUserId()Ljava/lang/String;
    .locals 1

    .line 717
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_userId:Ljava/lang/String;

    return-object v0
.end method

.method public handleStatusBtnTapped(Landroidx/fragment/app/FragmentActivity;I)V
    .locals 4

    .line 798
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-nez p2, :cond_0

    return-void

    .line 802
    :cond_0
    new-instance p2, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerName:Ljava/lang/String;

    invoke-direct {p2, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;-><init>(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    .line 803
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_helpUserList:Ljava/util/List;

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_doItUserList:Ljava/util/List;

    iget-object v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_notYetUserList:Ljava/util/List;

    iget-object v3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_offlineUserList:Ljava/util/List;

    invoke-virtual {p2, v0, v1, v2, v3}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->setHelpUserList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 804
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$5;

    invoke-direct {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$5;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)V

    invoke-virtual {p2, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->setOnClosedListener(Lcom/metamoji/ui/dialog/UiDialog$OnClosedListener;)V

    .line 810
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    const-string v0, "ScMonitorInfoDialog"

    invoke-virtual {p2, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method public isGroup()Z
    .locals 1

    .line 723
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_memberList:Ljava/util/List;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method isMySelf()Z
    .locals 3

    .line 656
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 657
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_memberList:Ljava/util/List;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 658
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_memberList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 659
    const-string v2, "user-id"

    invoke-static {v1, v2}, Lcom/metamoji/ns/NsCollaboUtils;->GetValue(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 660
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0

    .line 667
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolUtils;->getUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isVisibleNameLabel()Z
    .locals 1

    .line 822
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_visibleNameLabel:Z

    return v0
.end method

.method makeOtherPageImage(FIFFLandroid/graphics/Bitmap;DD)Landroid/graphics/Bitmap;
    .locals 15

    mul-float v0, p3, p1

    mul-float v1, p4, p1

    .line 449
    new-instance v3, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v3}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    const/4 v2, 0x0

    .line 450
    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 451
    invoke-virtual {v3, v2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 452
    invoke-virtual {v3, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 453
    invoke-virtual {v3, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 454
    invoke-virtual {v3}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v4

    const v5, 0x3ecccccd    # 0.4f

    .line 455
    invoke-virtual {v4, v5}, Lcom/metamoji/df/sprite/Graphics;->setFillAlpha(F)V

    const/4 v6, 0x0

    .line 456
    invoke-virtual {v4, v6}, Lcom/metamoji/df/sprite/Graphics;->setLinePaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 457
    sget-object v6, Lcom/metamoji/df/sprite/PaintSolid;->WHITE:Lcom/metamoji/df/sprite/PaintSolid;

    invoke-virtual {v4, v6}, Lcom/metamoji/df/sprite/Graphics;->setFillPaint(Lcom/metamoji/df/sprite/Paint;)V

    .line 458
    invoke-virtual {v4, v2, v2, v0, v1}, Lcom/metamoji/df/sprite/Graphics;->drawRect(FFFF)V

    .line 460
    new-instance v8, Lcom/metamoji/df/sprite/Sprite;

    invoke-direct {v8}, Lcom/metamoji/df/sprite/Sprite;-><init>()V

    .line 461
    invoke-virtual {v8, v5}, Lcom/metamoji/df/sprite/Sprite;->setAlpha(F)V

    .line 462
    invoke-virtual {v8, v2}, Lcom/metamoji/df/sprite/Sprite;->setX(F)V

    .line 463
    invoke-virtual {v8, v2}, Lcom/metamoji/df/sprite/Sprite;->setY(F)V

    .line 464
    invoke-virtual {v8, v0}, Lcom/metamoji/df/sprite/Sprite;->setWidth(F)V

    .line 465
    invoke-virtual {v8, v1}, Lcom/metamoji/df/sprite/Sprite;->setHeight(F)V

    .line 467
    invoke-virtual {v8}, Lcom/metamoji/df/sprite/Sprite;->getGraphics()Lcom/metamoji/df/sprite/Graphics;

    move-result-object v9

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v13, v0, v2

    invoke-virtual/range {p5 .. p5}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v14, v1, v2

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v12, p5

    invoke-virtual/range {v9 .. v14}, Lcom/metamoji/df/sprite/Graphics;->drawImage(FFLandroid/graphics/Bitmap;FF)V

    .line 469
    new-instance v7, Lcom/metamoji/df/sprite/Rasterizer;

    invoke-direct {v7}, Lcom/metamoji/df/sprite/Rasterizer;-><init>()V

    float-to-int v0, v0

    .line 470
    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setWidth(I)V

    float-to-int v0, v1

    .line 471
    invoke-virtual {v7, v0}, Lcom/metamoji/df/sprite/Rasterizer;->setHeight(I)V

    const/high16 v6, 0x3f800000    # 1.0f

    move-object v2, v7

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 473
    invoke-virtual/range {v2 .. v7}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v9, 0x0

    move-object v7, v2

    .line 474
    invoke-virtual/range {v7 .. v12}, Lcom/metamoji/df/sprite/Rasterizer;->paint(Lcom/metamoji/df/sprite/Sprite;FFFF)V

    .line 476
    invoke-virtual {v2}, Lcom/metamoji/df/sprite/Rasterizer;->getImage()Landroid/graphics/Bitmap;

    move-result-object v4

    .line 479
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    filled-new-array {v0}, [Ljava/lang/Object;

    move-result-object v0

    const-string v1, "%d"

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move-object v3, p0

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    .line 480
    invoke-virtual/range {v3 .. v9}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->mergeImage(Landroid/graphics/Bitmap;Ljava/lang/String;DD)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method mergeImage(Landroid/graphics/Bitmap;Ljava/lang/String;DD)Landroid/graphics/Bitmap;
    .locals 19

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-wide/from16 v2, p3

    move-wide/from16 v4, p5

    .line 486
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 487
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    double-to-int v8, v2

    double-to-int v9, v4

    .line 489
    sget-object v10, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v8, v9, v10}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v8

    .line 490
    new-instance v9, Landroid/graphics/Canvas;

    invoke-direct {v9, v8}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 491
    new-instance v10, Landroid/graphics/Paint;

    const/4 v11, 0x3

    invoke-direct {v10, v11}, Landroid/graphics/Paint;-><init>(I)V

    .line 494
    new-instance v11, Landroid/graphics/Rect;

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v12

    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v13

    const/4 v14, 0x0

    invoke-direct {v11, v14, v14, v12, v13}, Landroid/graphics/Rect;-><init>(IIII)V

    double-to-float v12, v2

    int-to-float v6, v6

    div-float v6, v12, v6

    double-to-float v13, v4

    int-to-float v7, v7

    div-float v7, v13, v7

    .line 495
    invoke-static {v6, v7}, Ljava/lang/Math;->min(FF)F

    move-result v6

    .line 496
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    int-to-float v7, v7

    mul-float/2addr v7, v6

    .line 497
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v15

    int-to-float v15, v15

    mul-float/2addr v15, v6

    sub-float/2addr v12, v7

    const/high16 v6, 0x40000000    # 2.0f

    div-float/2addr v12, v6

    sub-float/2addr v13, v15

    div-float/2addr v13, v6

    add-float/2addr v7, v12

    add-float/2addr v15, v13

    move/from16 v16, v6

    .line 502
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v12, v13, v7, v15}, Landroid/graphics/RectF;-><init>(FFFF)V

    move-object/from16 v7, p1

    invoke-virtual {v9, v7, v11, v6, v10}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    const/high16 v6, 0x41a00000    # 20.0f

    .line 508
    invoke-virtual {v0, v1, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getTextSize(Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    const-wide v11, 0x3fe6666666666666L    # 0.7

    mul-double v17, v2, v11

    mul-double/2addr v11, v4

    .line 511
    :goto_0
    iget v13, v7, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v14, v13

    cmpg-double v13, v14, v17

    if-gez v13, :cond_0

    iget v13, v7, Lcom/metamoji/cm/SizeF;->height:F

    float-to-double v13, v13

    cmpg-double v13, v13, v11

    if-gez v13, :cond_0

    const/high16 v7, 0x3f800000    # 1.0f

    add-float/2addr v6, v7

    .line 514
    invoke-virtual {v0, v1, v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->getTextSize(Ljava/lang/String;F)Lcom/metamoji/cm/SizeF;

    move-result-object v7

    const/4 v14, 0x0

    goto :goto_0

    .line 517
    :cond_0
    invoke-virtual {v10, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 518
    invoke-virtual {v10}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v10

    .line 519
    iget v11, v10, Landroid/graphics/Paint$FontMetrics;->ascent:F

    .line 520
    iget v10, v10, Landroid/graphics/Paint$FontMetrics;->descent:F

    .line 522
    iget v11, v7, Lcom/metamoji/cm/SizeF;->width:F

    float-to-double v11, v11

    sub-double/2addr v2, v11

    const-wide/high16 v11, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v11

    .line 524
    iget v7, v7, Lcom/metamoji/cm/SizeF;->height:F

    sub-float/2addr v7, v10

    div-float v7, v7, v16

    float-to-double v10, v7

    sub-double/2addr v4, v10

    .line 529
    new-instance v7, Landroid/graphics/Paint;

    invoke-direct {v7}, Landroid/graphics/Paint;-><init>()V

    const/4 v10, 0x1

    .line 530
    invoke-virtual {v7, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const v11, 0x3dcccccd    # 0.1f

    mul-float/2addr v11, v6

    .line 531
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    const/16 v11, 0xff

    const/4 v12, 0x0

    .line 532
    invoke-static {v11, v12, v12, v12}, Landroid/graphics/Color;->argb(IIII)I

    move-result v12

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setColor(I)V

    .line 533
    invoke-virtual {v7, v11}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 534
    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 535
    sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 536
    sget-object v12, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v7, v12}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    double-to-int v2, v2

    int-to-float v2, v2

    double-to-int v3, v4

    int-to-float v3, v3

    .line 539
    invoke-virtual {v9, v1, v2, v3, v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 544
    new-instance v4, Landroid/graphics/Paint;

    invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V

    .line 545
    invoke-virtual {v4, v10}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    const/4 v5, 0x0

    .line 546
    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 547
    invoke-static {v11, v11, v11, v11}, Landroid/graphics/Color;->argb(IIII)I

    move-result v5

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setColor(I)V

    .line 548
    invoke-virtual {v4, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 549
    sget-object v5, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 550
    sget-object v5, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 553
    invoke-virtual {v9, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    return-object v8
.end method

.method public notifyDataSetChanged()V
    .locals 7

    .line 136
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->getGridView()Landroid/widget/GridView;

    move-result-object v6

    .line 137
    invoke-virtual {v6}, Landroid/widget/GridView;->getAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;

    if-nez v3, :cond_0

    return-void

    .line 143
    :cond_0
    invoke-virtual {v6}, Landroid/widget/GridView;->getFirstVisiblePosition()I

    move-result v0

    .line 144
    invoke-virtual {v3, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;->getPosition(Ljava/lang/Object;)I

    move-result v4

    sub-int v0, v4, v0

    .line 145
    invoke-virtual {v6, v0}, Landroid/widget/GridView;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 146
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/forSchool/monitoring/ScMonitorView$1;

    move-object v2, p0

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$1;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Lcom/metamoji/forSchool/monitoring/ScMonitorList$ScMonitorViewAdapter;ILandroid/view/View;Landroid/widget/GridView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public releaseImage()V
    .locals 1

    .line 575
    monitor-enter p0

    const/4 v0, 0x0

    .line 577
    :try_start_0
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->thumbnail:Landroid/graphics/Bitmap;

    .line 578
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    .line 583
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public revalidate()V
    .locals 1

    const/4 v0, 0x0

    .line 297
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidate(Z)V

    return-void
.end method

.method public revalidate(Z)V
    .locals 5

    .line 305
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateTimerReset()V

    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 309
    iget v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTarget:I

    and-int/lit8 v2, v1, 0x4

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v0

    :goto_0
    and-int/lit8 v4, v1, 0x2

    if-eqz v4, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v0

    :goto_1
    and-int/2addr v1, v3

    if-eqz v1, :cond_2

    move v1, v3

    goto :goto_2

    :cond_2
    move v1, v0

    :goto_2
    if-nez v2, :cond_3

    if-nez v4, :cond_3

    if-eqz v1, :cond_4

    :cond_3
    move p1, v3

    .line 318
    :cond_4
    invoke-direct {p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateInner(Z)V

    .line 321
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTarget:I

    return-void
.end method

.method public revalidateDelay()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x3e8

    .line 252
    invoke-virtual {p0, v0, v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay(ZI)V

    return-void
.end method

.method public revalidateDelay(Z)V
    .locals 1

    const/16 v0, 0x3e8

    .line 256
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->revalidateDelay(ZI)V

    return-void
.end method

.method public revalidateDelay(ZI)V
    .locals 3

    .line 264
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    return-void

    .line 269
    :cond_0
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    .line 270
    new-instance v0, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/forSchool/monitoring/ScMonitorView$4;-><init>(Lcom/metamoji/forSchool/monitoring/ScMonitorView;Z)V

    .line 283
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    int-to-long v1, p2

    invoke-virtual {p1, v0, v1, v2}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    return-void
.end method

.method public revalidateTimerReset()V
    .locals 1

    .line 287
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 288
    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    const/4 v0, 0x0

    .line 289
    iput-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTimer:Ljava/util/Timer;

    :cond_0
    return-void
.end method

.method public selectStatusChanged()V
    .locals 1

    .line 677
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-nez v0, :cond_0

    return-void

    .line 680
    :cond_0
    invoke-virtual {v0, p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->isSelected(Lcom/metamoji/forSchool/monitoring/ScMonitorView;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isSelected:Z

    .line 682
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    return-void
.end method

.method public setGroupStatus(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 746
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_helpUserList:Ljava/util/List;

    .line 747
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_doItUserList:Ljava/util/List;

    .line 748
    iput-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_notYetUserList:Ljava/util/List;

    .line 749
    iput-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_offlineUserList:Ljava/util/List;

    .line 752
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isGroup()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 753
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateStatusBtnNum()V

    .line 758
    :cond_0
    iget-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorInfoDialog:Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;

    if-eqz p1, :cond_1

    .line 759
    iget-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_helpUserList:Ljava/util/List;

    iget-object p3, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_doItUserList:Ljava/util/List;

    iget-object p4, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_notYetUserList:Ljava/util/List;

    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_offlineUserList:Ljava/util/List;

    invoke-virtual {p1, p2, p3, p4, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorInfoDialog;->setHelpUserList(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    :cond_1
    return-void
.end method

.method public setPageId(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 835
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_pageId:Ljava/lang/String;

    .line 836
    iput-object p2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_layerId:Ljava/lang/String;

    return-void
.end method

.method public setRevalidateTarget(Z)V
    .locals 1

    .line 245
    iget v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTarget:I

    if-eqz p1, :cond_0

    const/4 p1, 0x4

    goto :goto_0

    :cond_0
    const/4 p1, 0x2

    :goto_0
    or-int/2addr p1, v0

    iput p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_revalidateTarget:I

    return-void
.end method

.method public setStatus(Ljava/lang/String;)V
    .locals 1

    .line 730
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 732
    iput-object p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    .line 735
    invoke-virtual {p0, v0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->updateBgColor(Z)V

    return-void
.end method

.method public setThumbnailSize(Lcom/metamoji/cm/Size;)V
    .locals 2

    .line 155
    iget v0, p1, Lcom/metamoji/cm/Size;->width:I

    int-to-double v0, v0

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbWidth:D

    .line 156
    iget p1, p1, Lcom/metamoji/cm/Size;->height:I

    int-to-double v0, p1

    iput-wide v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_thumbHeight:D

    return-void
.end method

.method public setVisibleNameLabel(Z)V
    .locals 1

    .line 826
    iget-boolean v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_visibleNameLabel:Z

    if-eq v0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 827
    :goto_0
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_visibleNameLabel:Z

    if-eqz v0, :cond_1

    .line 830
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    :cond_1
    return-void
.end method

.method public startReceiveData(Z)V
    .locals 0

    const/4 p1, 0x1

    .line 177
    iput-boolean p1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isReceivingData:Z

    .line 180
    invoke-direct {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->clearReceivingTimer()V

    return-void
.end method

.method public updateBgColor(Z)V
    .locals 8

    .line 601
    iget-object v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    if-nez v0, :cond_0

    goto/16 :goto_2

    .line 606
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$color;->transparent:I

    .line 607
    invoke-static {}, Lcom/metamoji/forSchool/ScSchoolManager;->sharedInstance()Lcom/metamoji/forSchool/ScSchoolManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/forSchool/ScSchoolManager;->isTeacher()Z

    move-result v1

    const v2, 0x3e99999a    # 0.3f

    const-string v3, "notyet"

    const-string v4, "doit"

    const-string v5, "help"

    const/high16 v6, 0x3f800000    # 1.0f

    if-eqz v1, :cond_4

    .line 608
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 610
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    goto :goto_0

    .line 611
    :cond_1
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 613
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    goto :goto_0

    .line 614
    :cond_2
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_0

    .line 618
    :cond_3
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->isGray()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    .line 623
    :cond_4
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->isMySelf()Z

    move-result v1

    .line 634
    iget-object v7, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 624
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 626
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_HELP:I

    goto :goto_0

    .line 627
    :cond_5
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 629
    sget v0, Lcom/metamoji/forSchool/ScSchoolConstants;->SCHOOL_STATUS_COLOR_DOIT:I

    goto :goto_0

    .line 630
    :cond_6
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    goto :goto_0

    .line 634
    :cond_7
    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    .line 635
    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_status:Ljava/lang/String;

    .line 636
    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_0

    .line 640
    :cond_8
    iget-object v1, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->m_monitorList:Lcom/metamoji/forSchool/monitoring/ScMonitorList;

    invoke-virtual {v1}, Lcom/metamoji/forSchool/monitoring/ScMonitorList;->isGray()Z

    move-result v1

    if-eqz v1, :cond_9

    goto :goto_1

    :cond_9
    :goto_0
    move v2, v6

    .line 647
    :goto_1
    iput v0, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewBgColor:I

    .line 648
    iput v2, p0, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->baseViewAlpha:F

    if-eqz p1, :cond_a

    .line 651
    invoke-virtual {p0}, Lcom/metamoji/forSchool/monitoring/ScMonitorView;->notifyDataSetChanged()V

    :cond_a
    :goto_2
    return-void
.end method
