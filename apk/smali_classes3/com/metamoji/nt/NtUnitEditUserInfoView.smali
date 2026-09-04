.class public Lcom/metamoji/nt/NtUnitEditUserInfoView;
.super Landroid/widget/FrameLayout;
.source "NtUnitEditUserInfoView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;
    }
.end annotation


# instance fields
.field private _hideTemp:Z

.field private _popupInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/nt/NtUnitEditUserLabelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_hideTemp(Lcom/metamoji/nt/NtUnitEditUserInfoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_popupInfos(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLayoutLabelRect(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getLayoutLabelRect(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPopupViewInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserLabelInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlayoutLabel(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabel(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlayoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->updateLabelWithLabelInfo(Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 71
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 80
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput-object p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 43
    iput-boolean p1, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method private addEditAreaEventListener()V
    .locals 1

    .line 200
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 205
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 210
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    .line 211
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private getLayoutLabelRect(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 290
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getWidth()F

    move-result v1

    .line 291
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getHeight()F

    move-result v2

    .line 293
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 294
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 295
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 296
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 298
    invoke-virtual {p1, v3, p0}, Lcom/metamoji/nt/NtUnitController;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 299
    invoke-virtual {p1, v5, p0}, Lcom/metamoji/nt/NtUnitController;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 300
    invoke-virtual {p1, v6, p0}, Lcom/metamoji/nt/NtUnitController;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    .line 301
    invoke-virtual {p1, v7, p0}, Lcom/metamoji/nt/NtUnitController;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    .line 303
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 306
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 307
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 308
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 309
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 311
    new-instance v7, Lcom/metamoji/nt/NtUnitEditUserInfoView$3;

    invoke-direct {v7, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$3;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    .line 332
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 333
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->getRight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v7, v8, v9, v10, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 335
    iget p2, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p2, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 336
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr p2, v6

    neg-float p2, p2

    invoke-virtual {v7, v4, p2}, Landroid/graphics/RectF;->offset(FF)V

    const-wide/16 v8, 0x0

    .line 339
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitController;->getRotation()D

    move-result-wide p1

    cmpl-double p1, v8, p1

    if-eqz p1, :cond_3

    .line 340
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 342
    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 343
    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 344
    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 345
    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 346
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 348
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 349
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 352
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    .line 353
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 355
    :cond_1
    iget p1, v7, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 356
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 357
    :cond_2
    iget p1, v7, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 358
    iget p1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 364
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    .line 365
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p1, v4, v4, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 366
    invoke-static {p1, v7}, Landroid/graphics/RectF;->intersects(Landroid/graphics/RectF;Landroid/graphics/RectF;)Z

    move-result p1

    if-nez p1, :cond_4

    return-object v0

    :cond_4
    return-object v7

    :cond_5
    :goto_1
    return-object v0
.end method

.method private getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/nt/NtUnitEditUserLabelInfo;
    .locals 2

    .line 461
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 465
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 469
    :cond_1
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    return-object p1
.end method

.method public static getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;
    .locals 2

    .line 88
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 93
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 98
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getUnitEditUserInfoView()Lcom/metamoji/nt/NtUnitEditUserInfoView;

    move-result-object v0

    return-object v0
.end method

.method private layoutLabel(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 404
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView$4;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private layoutLabelWithTextViewLayout(Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;)V
    .locals 3

    .line 379
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 380
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 383
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 384
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    .line 385
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 386
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getTargetUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabel(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    :cond_2
    return-void
.end method

.method private removeEditAreaEventListener()V
    .locals 1

    .line 218
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 228
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 232
    :cond_2
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private temporarilyHide()V
    .locals 2

    .line 763
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$12;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$12;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private temporarilyRestore()V
    .locals 2

    .line 781
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$13;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLabelWithLabelInfo(Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 244
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 246
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 247
    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 248
    invoke-virtual {p1, v0}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 252
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getDispLabel()Ljava/lang/String;

    move-result-object v0

    .line 254
    new-instance v2, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Landroid/content/Context;)V

    .line 255
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x33

    .line 256
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x0

    .line 257
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 258
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 261
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->textedit_userinfo_label_background:I

    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->setBackgroundResource(I)V

    .line 263
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x5

    .line 264
    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 265
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 266
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 268
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 269
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 270
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 272
    invoke-virtual {v2, v3}, Lcom/metamoji/nt/NtUnitEditUserInfoView$TextViewLayout;->addView(Landroid/view/View;)V

    .line 274
    invoke-virtual {p0, v2}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->addView(Landroid/view/View;)V

    .line 275
    invoke-virtual {p1, v2}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public checkTargetLayer()V
    .locals 3

    .line 181
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 182
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 189
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$2;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;F)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearPopupInfos()V
    .locals 2

    .line 148
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$1;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 171
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    .line 172
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->removeEditAreaEventListener()V

    return-void
.end method

.method public hideAllLabels()V
    .locals 2

    .line 692
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$10;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$10;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideLabel(Ljava/lang/String;)V
    .locals 2

    .line 602
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$8;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView$8;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideLabelWithUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 2

    .line 654
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView$9;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public layoutLabels()V
    .locals 2

    .line 438
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$5;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollChanged()V
    .locals 1

    .line 846
    new-instance v0, Lcom/metamoji/nt/NtUnitEditUserInfoView$14;

    invoke-direct {v0, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$14;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 822
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 839
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    .line 830
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public scrollStart()V
    .locals 0

    .line 807
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 103
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabels()V

    :cond_0
    return-void
.end method

.method public showInfoView(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 115
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 119
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->addEditAreaEventListener()V

    .line 121
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 123
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    .line 126
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->checkTargetLayer()V

    goto :goto_1

    .line 128
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 132
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->clearPopupInfos()V

    .line 134
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 136
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Lcom/metamoji/nt/INtEditor;->setUnitEditUserInfoViewVisibility(I)V

    .line 141
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public showLabel(Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V
    .locals 2

    .line 481
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/nt/NtUnitEditUserInfoView$6;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/lang/String;Lcom/metamoji/nt/NtUnitController;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showLabelWithLabels(Ljava/util/List;Lcom/metamoji/nt/NtUnitController;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/metamoji/nt/NtUnitController;",
            ")V"
        }
    .end annotation

    .line 531
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/nt/NtUnitEditUserInfoView$7;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;Ljava/util/List;Lcom/metamoji/nt/NtUnitController;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 904
    new-instance p1, Lcom/metamoji/nt/NtUnitEditUserInfoView$15;

    invoke-direct {p1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$15;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLabels()V
    .locals 2

    .line 720
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 724
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/nt/NtUnitEditUserInfoView$11;

    invoke-direct {v1, p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView$11;-><init>(Lcom/metamoji/nt/NtUnitEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLayoutLabelWithUnit(Lcom/metamoji/nt/NtUnitController;)V
    .locals 3

    .line 745
    iget-object v0, p0, Lcom/metamoji/nt/NtUnitEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 746
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 749
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 750
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;

    .line 751
    invoke-virtual {v1}, Lcom/metamoji/nt/NtUnitEditUserLabelInfo;->getTargetUnit()Lcom/metamoji/nt/NtUnitController;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 752
    invoke-direct {p0, p1, v1}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->layoutLabel(Lcom/metamoji/nt/NtUnitController;Lcom/metamoji/nt/NtUnitEditUserLabelInfo;)V

    :cond_2
    return-void
.end method

.method public zoomChanged()V
    .locals 0

    return-void
.end method

.method public zoomChanging()V
    .locals 0

    return-void
.end method

.method public zoomEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 873
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 890
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    .line 881
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public zoomStart()V
    .locals 0

    .line 859
    invoke-direct {p0}, Lcom/metamoji/nt/NtUnitEditUserInfoView;->temporarilyHide()V

    return-void
.end method
