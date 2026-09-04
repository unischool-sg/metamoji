.class public Lcom/metamoji/ui/library/item/LibraryPageView;
.super Landroid/widget/ScrollView;
.source "LibraryPageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;,
        Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;
    }
.end annotation


# static fields
.field static final AUTOSCROLL_AREA:F = 30.0f

.field static final COMMENT_LABEL_FONT_SIZE:F = 12.0f

.field static final COMMENT_LABEL_MARGIN_BOTTOM:I = 0x1e

.field static final COMMENT_LABEL_MARGIN_WIDTH:I = 0x8

.field static final DELAYTIME_MILISEC_AUTOSCROLL:I = 0x14

.field protected static final MARGIN_HEIGHT:F = 8.0f

.field protected static final MARGIN_WIDTH:F = 8.0f

.field public static final THUMBNAIL_HEIGHT:I = 0x50

.field static final THUMBNAIL_HORIZONTAL_MAX:I = 0x6

.field public static final THUMBNAIL_WIDTH:I = 0x50

.field protected static m_autoScrollArea:I


# instance fields
.field m_commentLabel:Landroid/widget/TextView;

.field m_commentLabelHeight:I

.field m_gestureDetector:Landroid/view/GestureDetector;

.field protected m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

.field private m_hasDownload:Z

.field m_heldPartCategoryNo:I

.field m_heldPartIndex:I

.field m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

.field public m_index:I

.field m_isArrangementMode:Z

.field protected m_marginHeight:I

.field protected m_marginWidth:I

.field public m_pageDic:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field protected m_partViewArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;"
        }
    .end annotation
.end field

.field m_partViewGrid:Landroid/widget/FrameLayout;

.field protected m_perLine:I

.field private m_scrollCount:I

.field m_scrollTimer:Lcom/metamoji/cm/UiTimer;

.field protected m_thumbnailSize:Lcom/metamoji/cm/Size;

.field m_touchPointInPart:Landroid/graphics/PointF;

.field protected final scrollPageDown:Ljava/lang/Runnable;

.field protected final scrollPageUp:Ljava/lang/Runnable;


# direct methods
.method static bridge synthetic -$$Nest$fgetm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollCount:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fputm_scrollCount(Lcom/metamoji/ui/library/item/LibraryPageView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollCount:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 126
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 107
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabelHeight:I

    const/4 v1, -0x1

    .line 110
    iput v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartCategoryNo:I

    .line 111
    iput v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    .line 113
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_touchPointInPart:Landroid/graphics/PointF;

    .line 1122
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollCount:I

    .line 1143
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPageView$5;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$5;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    iput-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollPageUp:Ljava/lang/Runnable;

    .line 1163
    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPageView$6;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$6;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    iput-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollPageDown:Ljava/lang/Runnable;

    .line 129
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->setBackgroundColor(I)V

    .line 132
    new-instance v0, Landroid/view/GestureDetector;

    new-instance v1, Lcom/metamoji/ui/library/item/LibraryPageView$1;

    invoke-direct {v1, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$1;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    invoke-direct {v0, p1, v1}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_gestureDetector:Landroid/view/GestureDetector;

    return-void
.end method


# virtual methods
.method public addBookmark(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 1

    .line 1199
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->addBookmark(Ljava/util/Map;)V

    return-void
.end method

.method protected adjustGridHeight(Landroid/view/ViewGroup;I)V
    .locals 2

    .line 1289
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    add-int/2addr p2, v0

    add-int/lit8 p2, p2, -0x1

    div-int/2addr p2, v0

    .line 1290
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    .line 1291
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    mul-int/lit8 v0, v0, 0x2

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    mul-int/2addr v1, p2

    add-int/2addr v0, v1

    iput v0, p1, Landroid/view/ViewGroup$LayoutParams;->height:I

    return-void
.end method

.method public appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;Z)V"
        }
    .end annotation

    .line 343
    invoke-virtual {p0, p1, p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->createPartView(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPartView;

    move-result-object p1

    .line 344
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    invoke-virtual {p2}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result p2

    .line 345
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(I)Landroid/graphics/PointF;

    move-result-object p2

    .line 346
    iget v0, p2, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 347
    iget p2, p2, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 348
    new-instance p2, Landroid/widget/FrameLayout$LayoutParams;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->width:I

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    invoke-direct {p2, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 349
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v0, p1, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 350
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz p3, :cond_0

    .line 355
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ui/library/item/LibraryPageView;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 358
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    :cond_0
    return-void
.end method

.method protected backHeldItemToGrid()V
    .locals 5

    .line 1097
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    if-nez v0, :cond_0

    goto :goto_0

    .line 1101
    :cond_0
    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 1102
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v1

    if-ne v0, v1, :cond_1

    :goto_0
    return-void

    .line 1107
    :cond_1
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 1108
    new-instance v2, Landroid/graphics/PointF;

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationX()F

    move-result v3

    iget-object v4, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v4}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationY()F

    move-result v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1109
    invoke-static {v2, v0, v1}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 1110
    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1111
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 1112
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 1113
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 1116
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    invoke-virtual {p0, v0, v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 1117
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    iget v1, v2, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    return-void
.end method

.method protected bringHeldItemToTop()V
    .locals 4

    .line 1082
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getTopLayer()Landroid/view/ViewGroup;

    move-result-object v0

    .line 1083
    new-instance v1, Landroid/graphics/PointF;

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationX()F

    move-result v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->getTranslationY()F

    move-result v3

    invoke-direct {v1, v2, v3}, Landroid/graphics/PointF;-><init>(FF)V

    .line 1084
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v1

    .line 1085
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v2

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 1086
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 1087
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 1088
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-void
.end method

.method protected cancelAutoScrollTimer()V
    .locals 1

    .line 1125
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    .line 1126
    invoke-virtual {v0}, Lcom/metamoji/cm/UiTimer;->cancel()V

    const/4 v0, 0x0

    .line 1127
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollTimer:Lcom/metamoji/cm/UiTimer;

    :cond_0
    const/4 v0, 0x0

    .line 1129
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollCount:I

    return-void
.end method

.method configurePage(Landroid/content/Context;)V
    .locals 3

    .line 282
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "partsArray"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 283
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 285
    check-cast v1, Ljava/util/Map;

    const/4 v2, 0x0

    invoke-virtual {p0, p1, v1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView;->appendPartViewWithDic(Landroid/content/Context;Ljava/util/Map;Z)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public createContents(Landroid/content/Context;Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;Ljava/util/Map;II)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;II)V"
        }
    .end annotation

    const/high16 v0, 0x41000000    # 8.0f

    .line 176
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    const/high16 v1, 0x41f00000    # 30.0f

    .line 177
    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    .line 180
    invoke-virtual {p0, p2, p4, p5}, Lcom/metamoji/ui/library/item/LibraryPageView;->init(Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;II)I

    .line 182
    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    .line 183
    invoke-static {}, Lcom/metamoji/ui/library/LibraryConstants;->getInstance()Lcom/metamoji/ui/library/LibraryConstants;

    move-result-object p2

    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    invoke-virtual {p2, p3}, Lcom/metamoji/ui/library/LibraryConstants;->hasDownload(Ljava/util/Map;)Z

    move-result p2

    iput-boolean p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_hasDownload:Z

    .line 184
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    .line 187
    new-instance p2, Landroid/widget/FrameLayout;

    invoke-direct {p2, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 188
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    invoke-direct {p3, p4, v2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, p2, p3}, Lcom/metamoji/ui/library/item/LibraryPageView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 191
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->guidanceStringId()I

    move-result p3

    const/16 v3, 0x33

    const/4 v4, -0x2

    const/4 v5, 0x0

    if-lez p3, :cond_0

    .line 193
    new-instance v6, Landroid/widget/RelativeLayout;

    invoke-direct {v6, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 194
    invoke-virtual {v6, v0, v5, v0, v1}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 195
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    sub-int/2addr p5, v1

    invoke-direct {v0, p4, p5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 196
    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 197
    invoke-virtual {p2, v6, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 198
    new-instance p5, Lcom/metamoji/ui/library/item/LibraryPageView$2;

    invoke-direct {p5, p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$2;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;Landroid/content/Context;)V

    iput-object p5, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    .line 208
    invoke-virtual {p5, p3}, Landroid/widget/TextView;->setText(I)V

    .line 209
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    const p5, -0x777778

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 210
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    const/high16 p5, 0x41400000    # 12.0f

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setTextSize(F)V

    .line 211
    iget-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    const/16 p5, 0x31

    invoke-virtual {p3, p5}, Landroid/widget/TextView;->setGravity(I)V

    .line 212
    new-instance p3, Landroid/widget/RelativeLayout$LayoutParams;

    invoke-direct {p3, v2, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    const/16 p5, 0x9

    .line 213
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    const/16 p5, 0xc

    .line 214
    invoke-virtual {p3, p5}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 215
    iget-object p5, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    invoke-virtual {v6, p5, p3}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 219
    :cond_0
    new-instance p3, Lcom/metamoji/ui/library/item/LibraryPageView$3;

    invoke-direct {p3, p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$3;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;Landroid/content/Context;)V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    .line 227
    invoke-virtual {p3, v5}, Landroid/widget/FrameLayout;->setClipChildren(Z)V

    .line 228
    new-instance p3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {p3, p4, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 229
    iput v3, p3, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 230
    iget-object p4, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    invoke-virtual {p2, p4, p3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 233
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->configurePage(Landroid/content/Context;)V

    return-void
.end method

.method protected createPartView(Landroid/content/Context;Ljava/util/Map;)Lcom/metamoji/ui/library/item/LibraryPartView;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Lcom/metamoji/ui/library/item/LibraryPartView;"
        }
    .end annotation

    .line 368
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPartView;-><init>(Landroid/content/Context;)V

    .line 369
    invoke-virtual {v0, p0, p2}, Lcom/metamoji/ui/library/item/LibraryPartView;->createContents(Lcom/metamoji/ui/library/item/LibraryPageView;Ljava/util/Map;)V

    return-object v0
.end method

.method public deletePart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 10

    .line 1219
    invoke-static {}, Lcom/metamoji/ui/UiCurrentActivityManager;->getInstance()Lcom/metamoji/ui/UiCurrentActivityManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/ui/UiCurrentActivityManager;->getCurrentActivityOrNull()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 1223
    :cond_0
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 1225
    const-string v1, "LibraryPageView#deletePart"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v2

    if-eqz v2, :cond_1

    :goto_0
    return-void

    .line 1229
    :cond_1
    iget-object v2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1230
    iget-object v3, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string/jumbo v4, "title"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1232
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1233
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v5

    sget-object v6, Lcom/metamoji/lb/LbConstants$LbPageType;->LbPageType_BOOKMARK:Lcom/metamoji/lb/LbConstants$LbPageType;

    if-ne v5, v6, :cond_2

    const/4 v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x0

    :goto_1
    if-eqz v5, :cond_3

    .line 1234
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_Bookmark:I

    goto :goto_2

    :cond_3
    sget v6, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg:I

    :goto_2
    invoke-virtual {v4, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v5, :cond_4

    .line 1235
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name_Bookmark:I

    goto :goto_3

    :cond_4
    sget v7, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Msg_With_Name:I

    :goto_3
    invoke-virtual {v4, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 1236
    const-string v8, "%@"

    const-string v9, "%s"

    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v7

    if-eqz v5, :cond_5

    .line 1237
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Title_Bookmark:I

    goto :goto_4

    :cond_5
    sget v8, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Title:I

    .line 1238
    :goto_4
    invoke-static {v3}, Lcom/metamoji/cm/CmUtils;->isValidString(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_6

    goto :goto_5

    :cond_6
    filled-new-array {v3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v7, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    :goto_5
    if-eqz v5, :cond_7

    .line 1239
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete_Bookmark:I

    goto :goto_6

    :cond_7
    sget v3, Lcom/metamoji/noteanytime/R$string;->Library_DeleteAlert_Delete:I

    .line 1242
    :goto_6
    iget-object v5, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v5}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-static {v5}, Lcom/metamoji/cm/CmUtils;->createAlertDialog(Landroidx/fragment/app/FragmentActivity;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v5

    .line 1243
    invoke-virtual {v4, v8}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v7}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1244
    invoke-virtual {v5, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1245
    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v6, Lcom/metamoji/ui/library/item/LibraryPageView$7;

    invoke-direct {v6, p0, p1, v2}, Lcom/metamoji/ui/library/item/LibraryPageView$7;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;Lcom/metamoji/ui/library/item/LibraryPartView;Ljava/lang/String;)V

    invoke-virtual {v5, v3, v6}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1258
    sget p1, Lcom/metamoji/noteanytime/R$string;->Msg_CANCEL:I

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const/4 v2, 0x0

    invoke-virtual {v5, p1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    .line 1259
    new-instance p1, Lcom/metamoji/ui/dialog/UiAlertDialog;

    invoke-direct {p1, v5}, Lcom/metamoji/ui/dialog/UiAlertDialog;-><init>(Landroidx/appcompat/app/AlertDialog$Builder;)V

    .line 1260
    invoke-virtual {p1, v0, v1}, Lcom/metamoji/ui/dialog/UiAlertDialog;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    return-void
.end method

.method protected getBasicThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 2

    .line 268
    new-instance v0, Lcom/metamoji/cm/Size;

    const/16 v1, 0x50

    invoke-direct {v0, v1, v1}, Lcom/metamoji/cm/Size;-><init>(II)V

    return-object v0
.end method

.method protected getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 797
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollX()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr v0, v1

    .line 798
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v1

    int-to-float v1, v1

    add-float/2addr p1, v1

    .line 799
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1, v0, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v1
.end method

.method public getCustomMenuView()Lcom/metamoji/ui/CustomMenuView;
    .locals 1

    .line 1278
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getCustomMenuView()Lcom/metamoji/ui/CustomMenuView;

    move-result-object v0

    return-object v0
.end method

.method protected getHorizontalMaxCount()I
    .locals 2

    .line 327
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getDlgActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 328
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->isTabletSize(Landroidx/fragment/app/FragmentActivity;)Z

    move-result v0

    const/4 v1, 0x6

    if-eqz v0, :cond_0

    return v1

    .line 333
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->isPortrait()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    :goto_0
    div-int/2addr v1, v0

    return v1
.end method

.method protected getPartViewArray()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/metamoji/ui/library/item/LibraryPartView;",
            ">;"
        }
    .end annotation

    .line 463
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    return-object v0
.end method

.method protected getPartViewGrid()Landroid/view/ViewGroup;
    .locals 1

    .line 480
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method protected getPartsArray()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 472
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "partsArray"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method protected getPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;
    .locals 2

    .line 786
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-direct {v0, v1, p1}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method public getThumbnailSize()Lcom/metamoji/cm/Size;
    .locals 1

    .line 317
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    return-object v0
.end method

.method protected getTotalCount()I
    .locals 1

    .line 487
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method protected guidanceStringId()I
    .locals 3

    .line 295
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPageView$8;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    const-string/jumbo v2, "type"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/lb/LbConstants$LbPageType;

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v0, 0x0

    return v0

    .line 305
    :cond_0
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Comment_Download:I

    return v0

    .line 303
    :cond_1
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Comment_System:I

    return v0

    .line 301
    :cond_2
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Comment_User:I

    return v0

    .line 299
    :cond_3
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Comment_Bookmark:I

    return v0

    .line 297
    :cond_4
    sget v0, Lcom/metamoji/noteanytime/R$string;->Library_Comment_History:I

    return v0
.end method

.method protected hasDownload()Z
    .locals 1

    .line 119
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_hasDownload:Z

    return v0
.end method

.method protected hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;
    .locals 2

    .line 1005
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;)V

    .line 1006
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p0, p1, v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->hitPartIndexInGrid(Landroid/graphics/PointF;I)I

    move-result p1

    iput p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    .line 1007
    iget p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    if-ltz p1, :cond_0

    .line 1008
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    iget v1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object p1, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    :cond_0
    return-object v0
.end method

.method protected hitPartIndexInGrid(Landroid/graphics/PointF;I)I
    .locals 4

    .line 1022
    iget v0, p1, Landroid/graphics/PointF;->y:F

    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    const/4 v1, -0x1

    if-ltz v0, :cond_3

    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    int-to-float v2, v2

    cmpg-float v0, v0, v2

    if-gez v0, :cond_0

    goto :goto_0

    .line 1026
    :cond_0
    iget v0, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    int-to-float v2, v2

    sub-float/2addr v0, v2

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v2, v2

    div-float/2addr v0, v2

    float-to-double v2, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1027
    iget p1, p1, Landroid/graphics/PointF;->y:F

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->height:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 1029
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    if-lt v0, v2, :cond_1

    return v1

    :cond_1
    mul-int/2addr p1, v2

    add-int/2addr p1, v0

    if-lt p1, p2, :cond_2

    return v1

    :cond_2
    return p1

    :cond_3
    :goto_0
    return v1
.end method

.method init(Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;II)I
    .locals 1

    const/high16 p3, 0x41000000    # 8.0f

    .line 244
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    .line 245
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    iput p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    const/high16 p3, 0x41f00000    # 30.0f

    .line 246
    invoke-static {p3}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result p3

    invoke-static {p3}, Ljava/lang/Math;->round(F)I

    move-result p3

    sput p3, Lcom/metamoji/ui/library/item/LibraryPageView;->m_autoScrollArea:I

    .line 248
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    const/4 p1, 0x0

    .line 249
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 p1, -0x1

    .line 250
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    const/4 p1, 0x0

    .line 251
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 254
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getHorizontalMaxCount()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    .line 255
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getBasicThumbnailSize()Lcom/metamoji/cm/Size;

    move-result-object p1

    .line 256
    iget p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    mul-int/lit8 p3, p3, 0x2

    sub-int/2addr p2, p3

    iget p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    div-int/2addr p2, p3

    int-to-float p3, p2

    .line 257
    iget v0, p1, Lcom/metamoji/cm/Size;->height:I

    int-to-float v0, v0

    iget p1, p1, Lcom/metamoji/cm/Size;->width:I

    int-to-float p1, p1

    div-float/2addr v0, p1

    mul-float/2addr p3, v0

    float-to-int p1, p3

    .line 258
    new-instance p3, Lcom/metamoji/cm/Size;

    invoke-direct {p3, p2, p1}, Lcom/metamoji/cm/Size;-><init>(II)V

    iput-object p3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    .line 259
    iget p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    return p1
.end method

.method public isArrangementMode()Z
    .locals 1

    .line 646
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    return v0
.end method

.method public isPortrait()Z
    .locals 1

    .line 637
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->isPortrait()Z

    move-result v0

    return v0
.end method

.method public longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z
    .locals 1

    .line 1270
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->longPressPart(Lcom/metamoji/ui/library/item/LibraryPartView;)Z

    move-result p1

    return p1
.end method

.method protected moveToIndex(Landroid/graphics/PointF;)I
    .locals 4

    .line 1046
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewGrid()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTop()I

    move-result v0

    int-to-float v0, v0

    .line 1047
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewArray()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 1050
    iget v2, p1, Landroid/graphics/PointF;->y:F

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    int-to-float v3, v3

    add-float/2addr v3, v0

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1053
    :cond_0
    iget v2, p1, Landroid/graphics/PointF;->y:F

    sub-float/2addr v2, v0

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    int-to-float v0, v0

    sub-float/2addr v2, v0

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v0, v0, Lcom/metamoji/cm/Size;->height:I

    int-to-float v0, v0

    div-float/2addr v2, v0

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int v0, v2

    .line 1056
    iget v2, p1, Landroid/graphics/PointF;->x:F

    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    int-to-float v3, v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_1

    add-int/lit8 v1, v1, -0x1

    return v1

    .line 1059
    :cond_1
    iget p1, p1, Landroid/graphics/PointF;->x:F

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    int-to-float v2, v2

    sub-float/2addr p1, v2

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    int-to-float v2, v2

    div-float/2addr p1, v2

    float-to-double v2, p1

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-int p1, v2

    .line 1060
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    if-lt p1, v2, :cond_2

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_2
    mul-int/2addr v0, v2

    add-int/2addr v0, p1

    if-lt v0, v1, :cond_3

    add-int/lit8 v1, v1, -0x1

    return v1

    :cond_3
    return v0
.end method

.method moveUnheldPartsAwayFromPointOfView(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/graphics/PointF;)V
    .locals 8

    .line 947
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/library/item/LibraryPageView;->moveToIndex(Landroid/graphics/PointF;)I

    move-result p2

    .line 950
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    if-ne p2, v0, :cond_0

    return-void

    .line 954
    :cond_0
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 957
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewArray()Ljava/util/List;

    move-result-object v1

    .line 958
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartsArray()Ljava/util/List;

    move-result-object v2

    .line 959
    iget v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    if-ge p2, v3, :cond_1

    :goto_0
    if-le v3, p2, :cond_2

    add-int/lit8 v4, v3, -0x1

    .line 964
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 965
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 966
    invoke-virtual {v4}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v5

    iget v6, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v5, v6}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 969
    invoke-interface {v1, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 970
    iget-object v4, v4, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v3, v4}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_1
    if-ge v3, p2, :cond_2

    :goto_1
    if-ge v3, p2, :cond_2

    add-int/lit8 v4, v3, 0x1

    .line 979
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 980
    invoke-virtual {p0, v3, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 981
    invoke-virtual {v5}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v6

    iget v7, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {v6, v7}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    .line 984
    invoke-interface {v1, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 985
    iget-object v5, v5, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, v3, v5}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move v3, v4

    goto :goto_1

    .line 992
    :cond_2
    iput p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    .line 995
    invoke-interface {v1, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 996
    iget p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v2, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected onLongPressed(Landroid/view/MotionEvent;)V
    .locals 1

    .line 606
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    if-eqz v0, :cond_0

    goto :goto_0

    .line 613
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 614
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object p1

    .line 615
    iget p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    if-ltz p1, :cond_1

    goto :goto_0

    .line 620
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getTotalCount()I

    move-result p1

    if-nez p1, :cond_2

    :goto_0
    return-void

    .line 625
    :cond_2
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementModeAllPages()V

    return-void
.end method

.method protected onPointerMoved(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 864
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 869
    :cond_0
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    if-gez v0, :cond_1

    return v1

    .line 873
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 876
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->getTopLayer()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 877
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v2, v0, Landroid/graphics/PointF;->x:F

    iget-object v3, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_touchPointInPart:Landroid/graphics/PointF;

    iget v3, v3, Landroid/graphics/PointF;->x:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationX(F)V

    .line 878
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_touchPointInPart:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcom/metamoji/ui/library/item/LibraryPartView;->setTranslationY(F)V

    .line 881
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p0, v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->moveUnheldPartsAwayFromPointOfView(Lcom/metamoji/ui/library/item/LibraryPartView;Landroid/graphics/PointF;)V

    .line 884
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v0

    .line 885
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getHeight()I

    move-result v2

    add-int/2addr v1, v2

    .line 886
    iget v2, p1, Landroid/graphics/PointF;->y:F

    sget v3, Lcom/metamoji/ui/library/item/LibraryPageView;->m_autoScrollArea:I

    add-int/2addr v0, v3

    int-to-float v0, v0

    cmpg-float v0, v2, v0

    if-gez v0, :cond_2

    .line 887
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollPageUp:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->setAutoScrollTimer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 888
    :cond_2
    iget p1, p1, Landroid/graphics/PointF;->y:F

    sget v0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_autoScrollArea:I

    sub-int/2addr v1, v0

    int-to-float v0, v1

    cmpl-float p1, p1, v0

    if-lez p1, :cond_3

    .line 889
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->scrollPageDown:Ljava/lang/Runnable;

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->setAutoScrollTimer(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 892
    :cond_3
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->cancelAutoScrollTimer()V

    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method protected onPointerPressed(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 809
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 814
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 815
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object v0

    .line 818
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    if-gez v2, :cond_1

    return v1

    .line 826
    :cond_1
    iget-object v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-static {p1, p0, v2}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v2

    .line 827
    iget-object v3, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v3, v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->containsThumbnailPoint(Landroid/graphics/PointF;)Z

    move-result v2

    if-nez v2, :cond_2

    return v1

    .line 831
    :cond_2
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->categoryNo:I

    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartCategoryNo:I

    .line 832
    iget v2, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    iput v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    .line 833
    iget-object v0, v0, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->partView:Lcom/metamoji/ui/library/item/LibraryPartView;

    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 836
    invoke-static {p1, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_touchPointInPart:Landroid/graphics/PointF;

    .line 839
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    const/4 v0, 0x1

    invoke-interface {p1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->lockScroll(Z)V

    .line 842
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->bringHeldItemToTop()V

    .line 845
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->appearDraggable()V

    .line 846
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewArray()Ljava/util/List;

    move-result-object p1

    .line 847
    :goto_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 848
    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    if-eq v1, v2, :cond_3

    .line 849
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 850
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->appearSmall()V

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_4
    return v0
.end method

.method protected onPointerReleased(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 905
    iget-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 911
    :cond_0
    iget p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    if-gez p1, :cond_1

    return v0

    .line 916
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->cancelAutoScrollTimer()V

    .line 919
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->backHeldItemToGrid()V

    .line 922
    iget p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(I)Landroid/graphics/PointF;

    move-result-object p1

    .line 923
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget v2, p1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    iget p1, p1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v1, p1}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    const/4 p1, -0x1

    .line 925
    iput p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    const/4 p1, 0x0

    .line 926
    iput-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 929
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getPartViewArray()Ljava/util/List;

    move-result-object p1

    .line 930
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 931
    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->appearNormal()V

    goto :goto_0

    .line 935
    :cond_2
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {p1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->lockScroll(Z)V

    const/4 p1, 0x1

    return p1
.end method

.method protected onTapped(Landroid/view/MotionEvent;)Z
    .locals 2

    .line 582
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 587
    :cond_0
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->getContentsPoint(Landroid/view/MotionEvent;)Landroid/graphics/PointF;

    move-result-object p1

    .line 588
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->hitPartIndex(Landroid/graphics/PointF;)Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;

    move-result-object p1

    .line 589
    iget p1, p1, Lcom/metamoji/ui/library/item/LibraryPageView$ItemInfo;->index:I

    if-ltz p1, :cond_1

    return v1

    .line 594
    :cond_1
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->stopArrangementModeAllPages()V

    const/4 p1, 0x1

    return p1
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 552
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_gestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 556
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    if-eqz v0, :cond_3

    .line 557
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eq v0, v1, :cond_2

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    goto :goto_0

    .line 559
    :cond_1
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onPointerMoved(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 565
    :cond_2
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->onPointerReleased(Landroid/view/MotionEvent;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v1

    .line 572
    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public pageType()Lcom/metamoji/lb/LbConstants$LbPageType;
    .locals 2

    .line 655
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    const-string/jumbo v1, "type"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/lb/LbConstants$LbPageType;

    return-object v0
.end method

.method pointOfIndex(I)Landroid/graphics/PointF;
    .locals 1

    .line 680
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    .line 681
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(ILandroid/graphics/PointF;)V

    return-object v0
.end method

.method pointOfIndex(ILandroid/graphics/PointF;)V
    .locals 3

    .line 666
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_perLine:I

    rem-int v1, p1, v0

    .line 667
    div-int/2addr p1, v0

    .line 668
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginWidth:I

    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v2, v2, Lcom/metamoji/cm/Size;->width:I

    mul-int/2addr v1, v2

    add-int/2addr v0, v1

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/PointF;->x:F

    .line 669
    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_thumbnailSize:Lcom/metamoji/cm/Size;

    iget v1, v1, Lcom/metamoji/cm/Size;->height:I

    mul-int/2addr p1, v1

    add-int/2addr v0, p1

    int-to-float p1, v0

    iput p1, p2, Landroid/graphics/PointF;->y:F

    return-void
.end method

.method protected removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 4

    .line 380
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 381
    iget-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    invoke-virtual {v1, p1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 384
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    :goto_0
    add-int/lit8 v0, v0, 0x1

    .line 385
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 387
    iget-object v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/metamoji/ui/library/item/LibraryPartView;

    add-int/lit8 v3, v0, -0x1

    .line 388
    invoke-virtual {p0, v3, v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->pointOfIndex(ILandroid/graphics/PointF;)V

    .line 389
    invoke-virtual {v2}, Lcom/metamoji/ui/library/item/LibraryPartView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->x(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    iget v3, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v2, v3}, Landroid/view/ViewPropertyAnimator;->y(F)Landroid/view/ViewPropertyAnimator;

    goto :goto_0

    .line 394
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_pageDic:Ljava/util/Map;

    const-string v1, "partsArray"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 395
    iget-object v1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 396
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 399
    iget-object p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    return-void
.end method

.method public removePartViewWithEntityId(Ljava/lang/String;)V
    .locals 4

    .line 409
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 410
    iget-object v2, v1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 411
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->removePartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    :cond_1
    return-void
.end method

.method public selectPart(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 1

    .line 1189
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->selectPart(Ljava/util/Map;)V

    return-void
.end method

.method protected setAutoScrollTimer(Ljava/lang/Runnable;)V
    .locals 7

    .line 1133
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollTimer:Lcom/metamoji/cm/UiTimer;

    if-eqz v0, :cond_0

    return-void

    .line 1136
    :cond_0
    new-instance v1, Lcom/metamoji/cm/UiTimer;

    invoke-direct {v1}, Lcom/metamoji/cm/UiTimer;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_scrollTimer:Lcom/metamoji/cm/UiTimer;

    const-wide/16 v3, 0x14

    const-wide/16 v5, 0x14

    move-object v2, p1

    .line 1137
    invoke-virtual/range {v1 .. v6}, Lcom/metamoji/cm/UiTimer;->schedule(Ljava/lang/Runnable;JJ)V

    return-void
.end method

.method protected setHasDownload(Z)V
    .locals 0

    .line 120
    iput-boolean p1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_hasDownload:Z

    return-void
.end method

.method public showPartInfoDlg(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 1

    .line 1209
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    iget-object p1, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->partInfo(Ljava/util/Map;)V

    return-void
.end method

.method public startArrangementMode()Z
    .locals 5

    .line 707
    sget-object v0, Lcom/metamoji/ui/library/item/LibraryPageView$8;->$SwitchMap$com$metamoji$lb$LbConstants$LbPageType:[I

    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->pageType()Lcom/metamoji/lb/LbConstants$LbPageType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/metamoji/lb/LbConstants$LbPageType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eq v0, v2, :cond_3

    const/4 v3, 0x6

    if-eq v0, v3, :cond_3

    .line 716
    invoke-static {}, Lcom/metamoji/nt/NtTrialManager;->getInstance()Lcom/metamoji/nt/NtTrialManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/metamoji/nt/NtTrialManager;->isTrialMode()Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 720
    :cond_0
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    if-eqz v0, :cond_1

    return v2

    .line 726
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/metamoji/ui/library/item/LibraryPartView;

    add-int/lit8 v4, v1, 0x1

    .line 727
    invoke-virtual {v3, v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->startArrangementMode(I)V

    move v1, v4

    goto :goto_0

    .line 731
    :cond_2
    iput-boolean v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    const/4 v0, -0x1

    .line 732
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    const/4 v0, 0x0

    .line 733
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    return v2

    :cond_3
    return v1
.end method

.method public startArrangementModeAllPages()V
    .locals 1

    .line 694
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->startArrangementMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 696
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->startArrangementModeAllPages()V

    :cond_0
    return-void
.end method

.method public stopArrangementMode()V
    .locals 2

    .line 754
    iget-boolean v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    if-nez v0, :cond_0

    return-void

    .line 759
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->cancelAutoScrollTimer()V

    .line 762
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->backHeldItemToGrid()V

    .line 765
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 766
    invoke-virtual {v1}, Lcom/metamoji/ui/library/item/LibraryPartView;->stopArrangementMode()V

    goto :goto_0

    .line 770
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->lockScroll(Z)V

    const/4 v0, -0x1

    .line 773
    iput v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartIndex:I

    const/4 v0, 0x0

    .line 774
    iput-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_heldPartView:Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 775
    iput-boolean v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_isArrangementMode:Z

    return-void
.end method

.method protected stopArrangementModeAllPages()V
    .locals 1

    .line 743
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->stopArrangementMode()V

    .line 745
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_handler:Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;

    invoke-interface {v0}, Lcom/metamoji/ui/library/item/LibraryPageView$ILibraryPageViewHandler;->stopArrangementModeAllPages()V

    return-void
.end method

.method updateCommentLabel(I)V
    .locals 3

    .line 449
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    if-eqz v0, :cond_1

    const/high16 v0, 0x41f00000    # 30.0f

    .line 450
    invoke-static {v0}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 451
    iget v1, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    add-int/2addr v1, p1

    .line 452
    invoke-virtual {p0}, Lcom/metamoji/ui/library/item/LibraryPageView;->getHeight()I

    move-result p1

    iget v2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabelHeight:I

    sub-int/2addr p1, v2

    sub-int/2addr p1, v0

    iget v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_marginHeight:I

    add-int/2addr p1, v0

    .line 453
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_commentLabel:Landroid/widget/TextView;

    if-le v1, p1, :cond_0

    const/16 p1, 0x8

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method updateContentOffsetByEntityId(Ljava/lang/String;)V
    .locals 4

    .line 500
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 501
    iget-object v2, v1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    const-string v3, "entityId"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 502
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 503
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/library/item/LibraryPageView;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    :cond_1
    return-void
.end method

.method protected updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V
    .locals 1

    .line 517
    new-instance v0, Lcom/metamoji/ui/library/item/LibraryPageView$4;

    invoke-direct {v0, p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView$4;-><init>(Lcom/metamoji/ui/library/item/LibraryPageView;Lcom/metamoji/ui/library/item/LibraryPartView;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updatePartViewTitle(Lcom/metamoji/lb/LbConstants$LbPageType;I)V
    .locals 0

    return-void
.end method

.method public updatePartViewWithDic(ILjava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 423
    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/ui/library/item/LibraryPartView;

    .line 424
    iput-object p2, p1, Lcom/metamoji/ui/library/item/LibraryPartView;->m_partDic:Ljava/util/Map;

    .line 427
    iget-object p2, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewGrid:Landroid/widget/FrameLayout;

    iget-object v0, p0, Lcom/metamoji/ui/library/item/LibraryPageView;->m_partViewArray:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    invoke-virtual {p0, p2, v0}, Lcom/metamoji/ui/library/item/LibraryPageView;->adjustGridHeight(Landroid/view/ViewGroup;I)V

    .line 430
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/library/item/LibraryPageView;->updateContentOffsetByPartView(Lcom/metamoji/ui/library/item/LibraryPartView;)V

    .line 433
    invoke-virtual {p1}, Lcom/metamoji/ui/library/item/LibraryPartView;->invalidate()V

    return-void
.end method
