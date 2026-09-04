.class public Lcom/metamoji/un/text/UnTextEditUserInfoView;
.super Landroid/widget/FrameLayout;
.source "UnTextEditUserInfoView.java"

# interfaces
.implements Lcom/metamoji/df/sprite/ViewportListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;
    }
.end annotation


# instance fields
.field private _hideTemp:Z

.field private _popupInfos:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/metamoji/un/text/UnTextEditUserLabelInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static bridge synthetic -$$Nest$fget_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fget_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_hideTemp(Lcom/metamoji/un/text/UnTextEditUserInfoView;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fput_popupInfos(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/HashMap;)V
    .locals 0

    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetLayoutLabelRect(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getLayoutLabelRect(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetPopupViewInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;)Lcom/metamoji/un/text/UnTextEditUserLabelInfo;
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mlayoutLabel(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mlayoutLabelWithTextViewLayout(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabelWithTextViewLayout(Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->updateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 66
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 70
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 75
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 35
    iput-object p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 p1, 0x0

    .line 38
    iput-boolean p1, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method private addEditAreaEventListener()V
    .locals 1

    .line 195
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 200
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    :goto_0
    return-void

    .line 205
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    .line 206
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->addViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private getLayoutLabelRect(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)Landroid/graphics/RectF;
    .locals 11

    const/4 v0, 0x0

    if-eqz p1, :cond_5

    if-nez p2, :cond_0

    goto/16 :goto_1

    .line 305
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getWidth()F

    move-result v1

    .line 306
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getHeight()F

    move-result v2

    .line 308
    new-instance v3, Landroid/graphics/PointF;

    const/4 v4, 0x0

    invoke-direct {v3, v4, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 309
    new-instance v5, Landroid/graphics/PointF;

    invoke-direct {v5, v1, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 310
    new-instance v6, Landroid/graphics/PointF;

    invoke-direct {v6, v4, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 311
    new-instance v7, Landroid/graphics/PointF;

    invoke-direct {v7, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    .line 313
    invoke-virtual {p1, v3, p0}, Lcom/metamoji/un/text/UnTextUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 314
    invoke-virtual {p1, v5, p0}, Lcom/metamoji/un/text/UnTextUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 315
    invoke-virtual {p1, v6, p0}, Lcom/metamoji/un/text/UnTextUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v3

    .line 316
    invoke-virtual {p1, v7, p0}, Lcom/metamoji/un/text/UnTextUnit;->localToViewPoint(Landroid/graphics/PointF;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v5

    .line 318
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 321
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 322
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 323
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 324
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v7, Lcom/metamoji/un/text/UnTextEditUserInfoView$4;

    invoke-direct {v7, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$4;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-static {v6, v7}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    const/4 v7, 0x0

    .line 347
    invoke-virtual {v6, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/graphics/PointF;

    .line 348
    new-instance v7, Landroid/graphics/RectF;

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->getLeft()I

    move-result v8

    int-to-float v8, v8

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->getTop()I

    move-result v9

    int-to-float v9, v9

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->getRight()I

    move-result v10

    int-to-float v10, v10

    invoke-virtual {p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->getBottom()I

    move-result p2

    int-to-float p2, p2

    invoke-direct {v7, v8, v9, v10, p2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 350
    iget p2, v6, Landroid/graphics/PointF;->x:F

    iget v6, v6, Landroid/graphics/PointF;->y:F

    invoke-virtual {v7, p2, v6}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 351
    invoke-virtual {v7}, Landroid/graphics/RectF;->height()F

    move-result p2

    const/high16 v6, 0x40a00000    # 5.0f

    add-float/2addr p2, v6

    neg-float p2, p2

    invoke-virtual {v7, v4, p2}, Landroid/graphics/RectF;->offset(FF)V

    const-wide/16 v8, 0x0

    .line 354
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextUnit;->getRotation()D

    move-result-wide p1

    cmpl-double p1, v8, p1

    if-eqz p1, :cond_3

    .line 355
    new-instance p1, Landroid/graphics/Path;

    invoke-direct {p1}, Landroid/graphics/Path;-><init>()V

    .line 357
    iget p2, v1, Landroid/graphics/PointF;->x:F

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->moveTo(FF)V

    .line 358
    iget p2, v2, Landroid/graphics/PointF;->x:F

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 359
    iget p2, v5, Landroid/graphics/PointF;->x:F

    iget v1, v5, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 360
    iget p2, v3, Landroid/graphics/PointF;->x:F

    iget v1, v3, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->lineTo(FF)V

    .line 361
    invoke-virtual {p1}, Landroid/graphics/Path;->close()V

    .line 363
    new-instance p2, Landroid/graphics/RectF;

    invoke-direct {p2}, Landroid/graphics/RectF;-><init>()V

    const/4 v1, 0x1

    .line 364
    invoke-virtual {p1, p2, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V

    .line 367
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result p1

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result v1

    cmpg-float p1, p1, v1

    if-gtz p1, :cond_1

    .line 368
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 370
    :cond_1
    iget p1, v7, Landroid/graphics/RectF;->left:F

    iget v1, p2, Landroid/graphics/RectF;->left:F

    cmpg-float p1, p1, v1

    if-gez p1, :cond_2

    .line 371
    iget p1, p2, Landroid/graphics/RectF;->left:F

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    goto :goto_0

    .line 372
    :cond_2
    iget p1, v7, Landroid/graphics/RectF;->right:F

    iget v1, p2, Landroid/graphics/RectF;->right:F

    cmpl-float p1, p1, v1

    if-lez p1, :cond_3

    .line 373
    iget p1, p2, Landroid/graphics/RectF;->right:F

    invoke-virtual {v7}, Landroid/graphics/RectF;->width()F

    move-result p2

    sub-float/2addr p1, p2

    iget p2, v7, Landroid/graphics/RectF;->top:F

    invoke-virtual {v7, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 379
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getWidth()I

    move-result p1

    if-eqz p1, :cond_4

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getHeight()I

    move-result p1

    if-eqz p1, :cond_4

    .line 380
    new-instance p1, Landroid/graphics/RectF;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getWidth()I

    move-result p2

    int-to-float p2, p2

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getHeight()I

    move-result v1

    int-to-float v1, v1

    invoke-direct {p1, v4, v4, p2, v1}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 381
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

.method private getPopupViewInfo(Ljava/lang/String;)Lcom/metamoji/un/text/UnTextEditUserLabelInfo;
    .locals 2

    .line 478
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 482
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 486
    :cond_1
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    return-object p1
.end method

.method public static getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;
    .locals 2

    .line 83
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 88
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object v0

    if-nez v0, :cond_1

    return-object v1

    .line 93
    :cond_1
    invoke-interface {v0}, Lcom/metamoji/nt/INtEditor;->getUnTextEditUserInfoView()Lcom/metamoji/un/text/UnTextEditUserInfoView;

    move-result-object v0

    return-object v0
.end method

.method private layoutLabel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 421
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;

    invoke-direct {v1, p0, p2, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView$5;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private layoutLabelWithTextViewLayout(Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;)V
    .locals 3

    .line 394
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 395
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 398
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 399
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    .line 400
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 401
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object p1

    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

    :cond_2
    return-void
.end method

.method private removeEditAreaEventListener()V
    .locals 1

    .line 213
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/nt/NtEditorWindowController;->getMainSheet()Lcom/metamoji/nt/NtNoteController;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v0}, Lcom/metamoji/nt/NtNoteController;->getInteractiveEventManager()Lcom/metamoji/nt/NtInteractiveEventManager;

    move-result-object v0

    if-nez v0, :cond_2

    :goto_0
    return-void

    .line 227
    :cond_2
    invoke-virtual {v0, p0}, Lcom/metamoji/nt/NtInteractiveEventManager;->removeViewportListener(Lcom/metamoji/df/sprite/ViewportListener;)V

    return-void
.end method

.method private temporarilyHide()V
    .locals 2

    .line 747
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$12;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$12;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private temporarilyRestore()V
    .locals 2

    .line 765
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$13;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private updateLabelWithLabelInfo(Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V
    .locals 6

    if-nez p1, :cond_0

    return-void

    .line 259
    :cond_0
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getPopupLabel()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    if-eqz v0, :cond_1

    .line 261
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 262
    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->removeView(Landroid/view/View;)V

    const/4 v0, 0x0

    .line 263
    invoke-virtual {p1, v0}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    .line 267
    :cond_1
    invoke-virtual {p1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getDispLabel()Ljava/lang/String;

    move-result-object v0

    .line 269
    new-instance v2, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Landroid/content/Context;)V

    .line 270
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    const/16 v5, 0x33

    .line 271
    iput v5, v3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    const/4 v5, 0x0

    .line 272
    invoke-virtual {v3, v5, v5, v5, v5}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 273
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 276
    sget v3, Lcom/metamoji/noteanytime/R$drawable;->textedit_userinfo_label_background:I

    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->setBackgroundResource(I)V

    .line 278
    new-instance v3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v5}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const/4 v5, 0x5

    .line 279
    invoke-virtual {v3, v1, v5, v1, v5}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 280
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v5, -0x1

    invoke-direct {v1, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 281
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 282
    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 283
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setTextColor(I)V

    const/16 v0, 0x11

    .line 284
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setGravity(I)V

    const/4 v0, 0x1

    .line 285
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLines(I)V

    .line 287
    invoke-virtual {v2, v3}, Lcom/metamoji/un/text/UnTextEditUserInfoView$TextViewLayout;->addView(Landroid/view/View;)V

    .line 289
    invoke-virtual {p0, v2}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->addView(Landroid/view/View;)V

    .line 290
    invoke-virtual {p1, v2}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->setPopupLabel(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public checkTargetLayer()V
    .locals 3

    .line 176
    invoke-static {}, Lcom/metamoji/ns/NsCollaboManager;->getInstance()Lcom/metamoji/ns/NsCollaboManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 177
    sget-object v1, Lcom/metamoji/ns/NsCollaboManager$CollaboMode;->PRIVATE:Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    invoke-virtual {v0}, Lcom/metamoji/ns/NsCollaboManager;->collaboMode()Lcom/metamoji/ns/NsCollaboManager$CollaboMode;

    move-result-object v0

    if-ne v1, v0, :cond_0

    const v0, 0x3f19999a    # 0.6f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    .line 184
    :goto_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v1

    new-instance v2, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;

    invoke-direct {v2, p0, v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$2;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;F)V

    invoke-virtual {v1, v2}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public clearPopupInfos()V
    .locals 2

    .line 143
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$1;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    const/4 v0, 0x0

    .line 166
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    .line 167
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->removeEditAreaEventListener()V

    return-void
.end method

.method public hideAllLabels()V
    .locals 2

    .line 696
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$11;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideLabel(Ljava/lang/String;)V
    .locals 2

    .line 605
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView$9;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public hideLabelWithTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2

    .line 658
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$10;

    invoke-direct {v1, p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView$10;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public layoutLabels()V
    .locals 2

    .line 455
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$6;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollChanged()V
    .locals 1

    .line 828
    new-instance v0, Lcom/metamoji/un/text/UnTextEditUserInfoView$14;

    invoke-direct {v0, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$14;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public scrollChanging()V
    .locals 0

    return-void
.end method

.method public scrollEnd(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 804
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 821
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public scrollInertiaStart()V
    .locals 0

    .line 812
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public scrollStart()V
    .locals 0

    .line 790
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public setVisibility(I)V
    .locals 0

    .line 98
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    if-nez p1, :cond_0

    .line 101
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabels()V

    :cond_0
    return-void
.end method

.method public showInfoView(Z)V
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 110
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getVisibility()I

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 114
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->addEditAreaEventListener()V

    .line 116
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 118
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/metamoji/nt/INtEditor;->setTextEditUserInfoViewVisibility(I)V

    .line 121
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->checkTargetLayer()V

    goto :goto_1

    .line 123
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->getVisibility()I

    move-result p1

    if-eqz p1, :cond_3

    :goto_0
    return-void

    .line 127
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->clearPopupInfos()V

    .line 129
    invoke-static {}, Lcom/metamoji/nt/NtEditorWindowController;->getInstance()Lcom/metamoji/nt/NtEditorWindowController;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 131
    invoke-virtual {p1}, Lcom/metamoji/nt/NtEditorWindowController;->getEditorDelegate()Lcom/metamoji/nt/INtEditor;

    move-result-object p1

    const/16 v1, 0x8

    invoke-interface {p1, v1}, Lcom/metamoji/nt/INtEditor;->setTextEditUserInfoViewVisibility(I)V

    .line 136
    :cond_4
    :goto_1
    iput-boolean v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_hideTemp:Z

    return-void
.end method

.method public showLabel(Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V
    .locals 2

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 500
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/metamoji/un/text/UnTextEditUserInfoView$7;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/lang/String;Lcom/metamoji/un/text/UnTextUnit;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public showLabelWithLabels(Ljava/util/ArrayList;Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;",
            "Lcom/metamoji/un/text/UnTextUnit;",
            ")V"
        }
    .end annotation

    .line 543
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/metamoji/un/text/UnTextEditUserInfoView$8;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;Ljava/util/ArrayList;Lcom/metamoji/un/text/UnTextUnit;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public sizeChanged(II)V
    .locals 0

    .line 886
    new-instance p1, Lcom/metamoji/un/text/UnTextEditUserInfoView$15;

    invoke-direct {p1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$15;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {p0, p1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLabels()V
    .locals 2

    .line 231
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-nez v0, :cond_0

    return-void

    .line 235
    :cond_0
    invoke-static {}, Lcom/metamoji/cm/CmTaskManager;->getInstance()Lcom/metamoji/cm/CmTaskManager;

    move-result-object v0

    new-instance v1, Lcom/metamoji/un/text/UnTextEditUserInfoView$3;

    invoke-direct {v1, p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView$3;-><init>(Lcom/metamoji/un/text/UnTextEditUserInfoView;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmTaskManager;->safeRunOnUIThread(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateLayoutLabelWithTextUnit(Lcom/metamoji/un/text/UnTextUnit;)V
    .locals 3

    .line 729
    iget-object v0, p0, Lcom/metamoji/un/text/UnTextEditUserInfoView;->_popupInfos:Ljava/util/HashMap;

    if-eqz v0, :cond_0

    .line 730
    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 733
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 734
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;

    .line 735
    invoke-virtual {v1}, Lcom/metamoji/un/text/UnTextEditUserLabelInfo;->getTargetTextUnit()Lcom/metamoji/un/text/UnTextUnit;

    move-result-object v2

    if-ne v2, p1, :cond_1

    .line 736
    invoke-direct {p0, p1, v1}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->layoutLabel(Lcom/metamoji/un/text/UnTextUnit;Lcom/metamoji/un/text/UnTextEditUserLabelInfo;)V

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

    .line 855
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundEnd(Z)V
    .locals 0

    if-eqz p1, :cond_0

    .line 872
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyRestore()V

    :cond_0
    return-void
.end method

.method public zoomReboundStart()V
    .locals 0

    .line 863
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyHide()V

    return-void
.end method

.method public zoomStart()V
    .locals 0

    .line 841
    invoke-direct {p0}, Lcom/metamoji/un/text/UnTextEditUserInfoView;->temporarilyHide()V

    return-void
.end method
