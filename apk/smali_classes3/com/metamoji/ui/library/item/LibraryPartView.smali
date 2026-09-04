.class public Lcom/metamoji/ui/library/item/LibraryPartView;
.super Landroid/widget/RelativeLayout;
.source "LibraryPartView.java"

# interfaces
.implements Lcom/metamoji/ui/MenuEventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;
    }
.end annotation


# static fields
.field public static final MARGIN:I = 0xa

.field public static final THUMBNAIL_PADDING:I = 0x2

.field static final TITLE_HEIGHT:I = 0x14

.field static final TITLE_PADDING:I = 0x5


# instance fields
.field protected m_deleteBtn:Landroid/widget/ImageButton;

.field m_gestureDetector:Landroid/view/GestureDetector;

.field protected m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

.field public m_partDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_thumbnail:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 84
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 87
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPartView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryPartView$1;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public appearDraggable()V
    .locals 2

    .line 536
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f8ccccd    # 1.1f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public appearNormal()V
    .locals 2

    .line 554
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public appearSmall()V
    .locals 2

    .line 545
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, -0x3fc00000    # -3.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const v1, 0x3f666666    # 0.9f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected arrangemodeMenuStringId(Lcom/metamoji/lb/LbConstants$LbPageType;)I
    .locals 1

    .line 447
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPartView$8;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_3

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 455
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_ContextMenu_Arrangemode_Download:I

    return p1

    .line 453
    :cond_1
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_ContextMenu_Arrangemode_System:I

    return p1

    .line 451
    :cond_2
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_ContextMenu_Arrangemode_User:I

    return p1

    .line 449
    :cond_3
    sget p1, Lcom/metamoji/noteanytime/R$string;->Library_ContextMenu_Arrangemode_Bookmark:I

    return p1
.end method

.method public containsThumbnailPoint(Landroid/graphics/PointF;)Z
    .locals 3

    .line 473
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_thumbnail:Landroid/widget/ImageView;

    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    .line 474
    iget v0, p1, Landroid/graphics/PointF;->x:F

    const/4 v1, 0x0

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    iget v0, p1, Landroid/graphics/PointF;->y:F

    cmpg-float v0, v1, v0

    if-gtz v0, :cond_0

    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_thumbnail:Landroid/widget/ImageView;

    .line 475
    invoke-virtual {v0}, Landroid/widget/ImageView;->getHeight()I

    move-result v0

    int-to-float v0, v0

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/ui/library/item/LibraryPageView;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 115
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    .line 116
    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    .line 118
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->initCanvas()V

    return-void
.end method

.method protected downloadDMThumbnail()V
    .locals 7

    .line 263
    const-string v0, "imagePath"

    :try_start_0
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v2, "driveId"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 264
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 265
    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object v3

    .line 266
    invoke-virtual {v3, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentInfo(Ljava/lang/String;)Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 268
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_1

    .line 271
    invoke-virtual {v4}, Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;->getContentsRevision()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v2, v5}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_0

    .line 273
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v3, Lcom/metamoji/ui/library/item/LibraryPartView$5;

    invoke-direct {v3, p0, v1, v2, v4}, Lcom/metamoji/ui/library/item/LibraryPartView$5;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;Ljava/lang/String;Lcom/metamoji/dvm/fw/bean/DvmDocumentMetaDataBean;)V

    invoke-virtual {v0, v3, v6, v6}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V

    return-void

    .line 282
    :cond_0
    invoke-virtual {v3, v2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 285
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v4, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 286
    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v4, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->updateThumbnail(Ljava/lang/String;)V

    .line 291
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPartView$6;

    invoke-direct {v1, p0, v3, v2}, Lcom/metamoji/ui/library/item/LibraryPartView$6;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;Lcom/metamoji/dvm/fw/DvmDocumentManager;Ljava/lang/String;)V

    invoke-virtual {v0, v1, v6, v6}, Lcom/metamoji/cm/CmTaskManager;->ensureRunOnBackground(Ljava/lang/Runnable;Lcom/metamoji/cm/CmTaskManager$ICancellable;Lcom/metamoji/cm/CmTaskManager$IOnCompleted;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_1
    return-void
.end method

.method protected downloadThumbnail(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 306
    const-string v0, "imagePath"

    invoke-static {}, Lcom/metamoji/dvm/DvmDriveManager;->getInstance()Lcom/metamoji/dvm/DvmDriveManager;

    move-result-object v1

    .line 307
    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDriveStatus(Ljava/lang/String;)I

    move-result v2

    sget v3, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    and-int/2addr v2, v3

    sget v3, Lcom/metamoji/dvm/fw/bean/DvmDriveBean;->STATUS_ACCESS_DENIED:I

    if-ne v2, v3, :cond_0

    goto :goto_1

    .line 311
    :cond_0
    invoke-virtual {v1, p1}, Lcom/metamoji/dvm/DvmDriveManager;->getDvmDocumentManager(Ljava/lang/String;)Lcom/metamoji/dvm/fw/DvmDocumentManager;

    move-result-object p1

    .line 312
    invoke-virtual {p1, p2, p3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->isThumbnailMissingForDocument(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_4

    .line 313
    invoke-virtual {p1}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->cloudService()Lcom/metamoji/sd/cs/SdCloudService;

    move-result-object v1

    .line 314
    new-instance v2, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;

    invoke-direct {v2}, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;-><init>()V

    .line 315
    iput-object p2, v2, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->documentId:Ljava/lang/String;

    .line 316
    iput-object p3, v2, Lcom/metamoji/sd/cs/params/SdGetDocumentThumbnailParams;->revision:Ljava/lang/String;

    .line 317
    invoke-virtual {v1, v2}, Lcom/metamoji/sd/cs/SdCloudService;->executeWithAutoLoginFor(Lcom/metamoji/sd/cs/params/SdRequestParams;)Lcom/metamoji/sd/cs/response/SdResponseResult;

    move-result-object v1

    check-cast v1, Lcom/metamoji/sd/cs/response/SdFileResult;

    if-eqz v1, :cond_3

    .line 318
    iget v2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->errorCode:I

    if-nez v2, :cond_3

    .line 320
    :try_start_0
    iget-object v2, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-static {v2}, Lcom/metamoji/sd/SdUtils;->readFileAsByte(Ljava/io/File;)[B

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, p3, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->saveDocumentThumbnailWithData([BLjava/lang/String;Ljava/lang/String;Ljava/util/Date;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 323
    invoke-virtual {p1, p2}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentIconImageFile(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    if-eqz p3, :cond_1

    .line 324
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 325
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 326
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 327
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v2, Lcom/metamoji/ui/library/item/LibraryPartView$7;

    invoke-direct {v2, p0, p3}, Lcom/metamoji/ui/library/item/LibraryPartView$7;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    .line 335
    :cond_1
    invoke-virtual {p1, p2, v3}, Lcom/metamoji/dvm/fw/DvmDocumentManager;->getDocumentContents(Ljava/lang/String;Lcom/metamoji/sd/cs/SdRequestCanceller;)Lcom/metamoji/dvm/fw/result/DvmDMResultWithOfflineFlag;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 338
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    .line 340
    :cond_2
    :goto_0
    iget-object p1, v1, Lcom/metamoji/sd/cs/response/SdFileResult;->file:Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    :cond_3
    const-wide/16 p1, 0xc8

    .line 344
    :try_start_1
    invoke-static {p1, p2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 346
    invoke-virtual {p1}, Ljava/lang/InterruptedException;->printStackTrace()V

    :cond_4
    :goto_1
    return-void
.end method

.method protected initCanvas()V
    .locals 6

    .line 128
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 129
    iget v1, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v1, v1

    const/high16 v2, 0x42a00000    # 80.0f

    div-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v2, v1

    float-to-int v2, v2

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v1, v3

    float-to-int v1, v1

    .line 133
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/metamoji/noteanytime/R$layout;->library_item:I

    invoke-static {v3, v4, p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    const/4 v3, 0x0

    .line 135
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setClipChildren(Z)V

    .line 138
    sget v4, Lcom/metamoji/noteanytime/R$id;->image_library_thumbnail:I

    invoke-virtual {p0, v4}, Lcom/metamoji/ui/library/item/LibraryPartView;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_thumbnail:Landroid/widget/ImageView;

    .line 139
    invoke-virtual {v4}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 140
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 141
    iput v1, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 142
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_thumbnail:Landroid/widget/ImageView;

    invoke-virtual {v1, v2, v2, v2, v2}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 143
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v2, "imagePath"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 144
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 145
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->updateThumbnail(Ljava/lang/String;)V

    goto :goto_0

    .line 147
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->downloadDMThumbnail()V

    .line 151
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v1

    .line 152
    sget-object v2, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_SYSTEM:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-eq v1, v2, :cond_1

    .line 153
    sget v2, Lcom/metamoji/noteanytime/R$id;->button_library_delete:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_deleteBtn:Landroid/widget/ImageButton;

    .line 154
    new-instance v4, Lcom/metamoji/ui/library/item/LibraryPartView$2;

    invoke-direct {v4, p0}, Lcom/metamoji/ui/library/item/LibraryPartView$2;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    invoke-virtual {v2, v4}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 163
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v4, "isTrial"

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 165
    sget v2, Lcom/metamoji/noteanytime/R$id;->overlay_library_trial:I

    invoke-virtual {p0, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 166
    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 170
    :cond_2
    sget-object v2, Lcom/metamoji/ui/library/item/LibraryPartView$8;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    const/4 v2, 0x1

    const/4 v4, 0x2

    if-eq v1, v2, :cond_3

    if-eq v1, v4, :cond_3

    goto :goto_1

    .line 175
    :cond_3
    sget v1, Lcom/metamoji/noteanytime/R$id;->overlay_library_shortcut:I

    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 176
    invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V

    .line 184
    :goto_1
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v5, "title"

    invoke-interface {v1, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 185
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_4

    .line 186
    sget v5, Lcom/metamoji/noteanytime/R$id;->label_library_title:I

    invoke-virtual {p0, v5}, Lcom/metamoji/ui/library/item/LibraryPartView;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 187
    invoke-virtual {v5, v4, v3, v4, v3}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 188
    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 189
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setGravity(I)V

    .line 190
    iget v0, v0, Lcom/metamoji/cm/Size;->height:I

    add-int/lit8 v0, v0, -0x19

    int-to-float v0, v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTranslationY(F)V

    const/4 v0, 0x4

    .line 191
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setTextAlignment(I)V

    :cond_4
    return-void
.end method

.method protected onDeleteBtnTapped()Z
    .locals 1

    .line 567
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0, p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    const/4 v0, 0x1

    return v0
.end method

.method public onLongPressed(Landroid/view/MotionEvent;)V
    .locals 1

    .line 412
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->isArrangementMode()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 417
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object p1

    .line 420
    sget-object v0, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_STORE:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 424
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->performHapticFeedback(I)Z

    .line 427
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z

    move-result p1

    if-eqz p1, :cond_2

    :goto_0
    return-void

    .line 432
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementModeAllPages()V

    return-void
.end method

.method public onSelect(Landroid/view/View;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 512
    check-cast p2, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;

    invoke-virtual {p2}, Lcom/metamoji/ui/library/item/LibraryPartView$ContextCommand;->ordinal()I

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x1

    if-eq p1, p2, :cond_1

    const/4 p2, 0x2

    if-eq p1, p2, :cond_0

    return-void

    .line 523
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementModeAllPages()V

    return-void

    .line 519
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->showPartInfoDlg(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    return-void

    .line 515
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->addBookmark(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    return-void
.end method

.method protected onTapped(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 397
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->isArrangementMode()Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    return v0

    .line 402
    :cond_0
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->playSoundEffect(I)V

    .line 403
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {p1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->selectPart(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1

    .line 379
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->isArrangementMode()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 383
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method

.method protected pageType()Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 2

    .line 360
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v0

    .line 361
    sget-object v1, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_EXTENSION:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v0, v1, :cond_0

    .line 363
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    :cond_0
    return-object v0
.end method

.method protected showContextMenu(Lcom/metamoji/lb/LbConstants$LbPageType;)V
    .locals 0

    return-void
.end method

.method public startArrangementMode(I)V
    .locals 1

    .line 484
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_deleteBtn:Landroid/widget/ImageButton;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 485
    invoke-virtual {p1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    :cond_0
    const/high16 p1, 0x40400000    # 3.0f

    .line 489
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->setRotation(F)V

    .line 490
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object p1

    const/high16 v0, -0x3fc00000    # -3.0f

    invoke-virtual {p1, v0}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method public stopArrangementMode()V
    .locals 2

    .line 500
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_deleteBtn:Landroid/widget/ImageButton;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    .line 501
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 505
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->rotation(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->scaleY(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected thumbnailTaskExecute(Landroid/os/AsyncTask;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/AsyncTask<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;)V"
        }
    .end annotation

    .line 238
    invoke-static {}, Lcom/metamoji/ui/library/item/LibraryViewDialog;->getThumbnailThreadPoolExecutor()Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 241
    :try_start_0
    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {p1, v0, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 244
    :catch_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/cm/CmTaskManager;->getHandler()Landroid/os/Handler;

    move-result-object v1

    .line 245
    new-instance v2, Lcom/metamoji/ui/library/item/LibraryPartView$4;

    invoke-direct {v2, p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryPartView$4;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/os/AsyncTask;Ljava/util/concurrent/Executor;)V

    const-wide/16 v3, 0x1f4

    .line 255
    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method protected updateThumbnail(Ljava/lang/String;)V
    .locals 3

    .line 197
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPartView;->m_pageView:Lcom/metamoji/ui/library/item/LibraryPageView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object v0

    .line 198
    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    int-to-float v0, v0

    const/high16 v1, 0x42a00000    # 80.0f

    div-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v1, v0

    float-to-int v1, v1

    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v0, v2

    float-to-int v0, v0

    mul-int/lit8 v1, v1, 0x2

    sub-int/2addr v0, v1

    .line 204
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPartView$3;

    invoke-direct {v1, p0, p1, v0, v0}, Lcom/metamoji/ui/library/item/LibraryPartView$3;-><init>(Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;II)V

    .line 230
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->thumbnailTaskExecute(Landroid/os/AsyncTask;)V

    return-void
.end method
