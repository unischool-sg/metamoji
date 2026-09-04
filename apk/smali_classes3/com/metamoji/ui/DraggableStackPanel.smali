.class public Lcom/metamoji/ui/DraggableStackPanel;
.super Ljava/lang/Object;
.source "DraggableStackPanel.java"

# interfaces
.implements Lcom/metamoji/ui/IDraggableContainer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/DraggableStackPanel$DragInfo;,
        Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;
    }
.end annotation


# static fields
.field private static final ANIM_DURATION:I = 0x96


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/widget/FrameLayout;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

.field private mDropListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemLayoutChanged:Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

.field mPos1:Landroid/graphics/PointF;

.field mRect1:Landroid/graphics/RectF;

.field private mVertical:Z


# direct methods
.method static bridge synthetic -$$Nest$fgetmVertical(Lcom/metamoji/ui/DraggableStackPanel;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mVertical:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$mfindChild(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;)I
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->findChild(Landroid/view/View;)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetPosition(Lcom/metamoji/ui/DraggableStackPanel;ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/metamoji/ui/DraggableStackPanel;->getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monItemSizeChanged(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->onItemSizeChanged(Landroid/view/View;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mreposition(Lcom/metamoji/ui/DraggableStackPanel;II)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout;)V
    .locals 2

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDropListener:Ljava/lang/ref/WeakReference;

    .line 25
    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mContainer:Ljava/lang/ref/WeakReference;

    .line 26
    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    const/4 v1, 0x0

    .line 28
    iput-boolean v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mVertical:Z

    .line 31
    new-instance v1, Landroid/graphics/PointF;

    invoke-direct {v1}, Landroid/graphics/PointF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    .line 32
    new-instance v1, Landroid/graphics/RectF;

    invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V

    iput-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mRect1:Landroid/graphics/RectF;

    .line 360
    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mOnItemLayoutChanged:Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    .line 44
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mContainer:Ljava/lang/ref/WeakReference;

    .line 45
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    .line 48
    new-instance v0, Lcom/metamoji/ui/DraggableStackPanel$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/DraggableStackPanel$1;-><init>(Lcom/metamoji/ui/DraggableStackPanel;)V

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    return-void
.end method

.method private containsChild(Landroid/view/View;)Z
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private dragEnd(Landroid/view/View;Landroid/graphics/PointF;Z)V
    .locals 1

    .line 149
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->check(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p3, :cond_2

    if-eqz p2, :cond_1

    .line 159
    iget-object p3, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    invoke-virtual {p3, p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->dragTo(Landroid/graphics/PointF;)V

    .line 162
    :cond_1
    iget-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    invoke-virtual {p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->From()I

    move-result p2

    .line 163
    iget-object p3, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    invoke-virtual {p3}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->To()I

    move-result p3

    if-eq p2, p3, :cond_2

    .line 166
    invoke-direct {p0, p2, p3}, Lcom/metamoji/ui/DraggableStackPanel;->moveChildInList(II)Z

    .line 167
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getDropListener()Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 170
    invoke-interface {v0, p1, p2, p3}, Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;->onItemMoved(Landroid/view/View;II)V

    :cond_2
    const/4 p2, 0x0

    .line 174
    iput-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    const/high16 p2, 0x3f800000    # 1.0f

    .line 175
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    const/4 p1, 0x0

    const/4 p2, -0x1

    .line 176
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    :cond_3
    :goto_0
    return-void
.end method

.method private findChild(Landroid/view/View;)I
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method private getDropListener()Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;
    .locals 1

    .line 70
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDropListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;
    .locals 2

    .line 362
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mOnItemLayoutChanged:Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    if-nez v0, :cond_0

    .line 363
    new-instance v0, Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;-><init>(Lcom/metamoji/ui/DraggableStackPanel;Lcom/metamoji/ui/DraggableStackPanel-IA;)V

    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mOnItemLayoutChanged:Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    .line 365
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mOnItemLayoutChanged:Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    return-object v0
.end method

.method private getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;
    .locals 4

    .line 258
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-gt p1, v0, :cond_2

    .line 262
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p2

    check-cast p2, Landroid/widget/FrameLayout$LayoutParams;

    .line 263
    iget v0, p2, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    iget p2, p2, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float p2, p2

    invoke-static {p3, v0, p2}, Lcom/metamoji/cm/PointUtils;->set(Landroid/graphics/PointF;FF)V

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_1

    .line 266
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 267
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mRect1:Landroid/graphics/RectF;

    invoke-direct {p0, v0, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getViewMargin(Landroid/view/View;Landroid/graphics/RectF;)Landroid/graphics/RectF;

    move-result-object v1

    .line 268
    iget-boolean v2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mVertical:Z

    if-eqz v2, :cond_0

    .line 270
    iget v2, p3, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v3

    iget v1, v1, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p3, Landroid/graphics/PointF;->y:F

    goto :goto_1

    .line 274
    :cond_0
    iget v2, p3, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    int-to-float v0, v0

    iget v3, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v3

    iget v1, v1, Landroid/graphics/RectF;->right:F

    add-float/2addr v0, v1

    add-float/2addr v2, v0

    iput v2, p3, Landroid/graphics/PointF;->x:F

    :goto_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_1
    return-object p3

    .line 260
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance p3, Ljava/lang/StringBuilder;

    const-string v0, "DraggableStackPanel:getPosition() count="

    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, " index="

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method private getViewMargin(Landroid/view/View;Landroid/graphics/RectF;)Landroid/graphics/RectF;
    .locals 1

    .line 238
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout$LayoutParams;

    .line 239
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->leftMargin:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->left:F

    .line 240
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->top:F

    .line 241
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->rightMargin:I

    int-to-float v0, v0

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 242
    iget p1, p1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    int-to-float p1, p1

    iput p1, p2, Landroid/graphics/RectF;->bottom:F

    return-object p2
.end method

.method private moveChildInList(II)Z
    .locals 1

    if-ne p1, p2, :cond_0

    const/4 p1, 0x0

    return p1

    .line 136
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    .line 137
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    const/4 p1, 0x1

    return p1
.end method

.method private onItemSizeChanged(Landroid/view/View;)V
    .locals 1

    .line 328
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->findChild(Landroid/view/View;)I

    move-result p1

    if-ltz p1, :cond_0

    const/4 v0, -0x1

    .line 332
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    :cond_0
    return-void
.end method

.method private reposition(II)V
    .locals 3

    if-ltz p2, :cond_0

    .line 288
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lt p2, v0, :cond_1

    .line 290
    :cond_0
    iget-object p2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/lit8 p2, p2, -0x1

    :cond_1
    :goto_0
    if-gt p1, p2, :cond_2

    .line 294
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 295
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v1

    .line 296
    iget v2, v1, Landroid/graphics/PointF;->x:F

    invoke-virtual {v0, v2}, Landroid/view/View;->setX(F)V

    .line 297
    iget v1, v1, Landroid/graphics/PointF;->y:F

    invoke-virtual {v0, v1}, Landroid/view/View;->setY(F)V

    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method


# virtual methods
.method public addChild(Landroid/view/View;)V
    .locals 2

    .line 425
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 429
    :cond_0
    instance-of v1, p1, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    if-eqz v1, :cond_1

    .line 431
    move-object v1, p1

    check-cast v1, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    invoke-interface {v1, p0}, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;->setDraggableContainer(Lcom/metamoji/ui/IDraggableContainer;)V

    .line 434
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 435
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    invoke-virtual {v0, p1}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 438
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-direct {p0, v0, p1, v1}, Lcom/metamoji/ui/DraggableStackPanel;->getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 439
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p1, v1}, Landroid/view/View;->setX(F)V

    .line 440
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p1, v0}, Landroid/view/View;->setY(F)V

    return-void
.end method

.method public asView()Landroid/view/ViewGroup;
    .locals 1

    .line 209
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    return-object v0
.end method

.method public drag(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 1

    .line 119
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->check(Landroid/view/View;)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    invoke-virtual {p1, p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;->dragTo(Landroid/graphics/PointF;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public dragBegin(Landroid/view/View;Landroid/graphics/PointF;)Z
    .locals 3

    .line 93
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 98
    :cond_0
    invoke-virtual {v0}, Landroid/widget/FrameLayout;->getChildCount()I

    move-result v0

    const/4 v2, 0x1

    if-gt v0, v2, :cond_1

    return v1

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    if-nez v0, :cond_2

    .line 105
    new-instance v0, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    invoke-direct {v0, p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel$DragInfo;-><init>(Lcom/metamoji/ui/DraggableStackPanel;Landroid/view/View;Landroid/graphics/PointF;)V

    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    const/high16 p2, 0x3f000000    # 0.5f

    .line 106
    invoke-virtual {p1, p2}, Landroid/view/View;->setAlpha(F)V

    return v2

    .line 103
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "DraggableStackPanel: beginDrag() : beginDrag called during other item being dragged."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public dragCancel(Landroid/view/View;)V
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 199
    invoke-direct {p0, p1, v0, v1}, Lcom/metamoji/ui/DraggableStackPanel;->dragEnd(Landroid/view/View;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public dragEnd(Landroid/view/View;Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    .line 188
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->dragEnd(Landroid/view/View;Landroid/graphics/PointF;Z)V

    return-void
.end method

.method public getChildAt(I)Landroid/view/View;
    .locals 3

    if-ltz p1, :cond_0

    .line 344
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/View;

    return-object p1

    .line 346
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "DraggableStackPanel:setChildAt() count="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getChildCount()I
    .locals 1

    .line 415
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getContainer()Landroid/widget/FrameLayout;
    .locals 1

    .line 62
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public insertChild(ILandroid/view/View;)V
    .locals 2

    .line 451
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 455
    :cond_0
    instance-of v1, p2, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    if-eqz v1, :cond_1

    .line 457
    move-object v1, p2

    check-cast v1, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    invoke-interface {v1, p0}, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;->setDraggableContainer(Lcom/metamoji/ui/IDraggableContainer;)V

    .line 460
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 461
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, p2}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 462
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 464
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 465
    iget v1, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v1}, Landroid/view/View;->setX(F)V

    .line 466
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    add-int/lit8 p1, p1, 0x1

    const/4 p2, -0x1

    .line 468
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    return-void
.end method

.method public isDragging()Z
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDragInfo:Lcom/metamoji/ui/DraggableStackPanel$DragInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public moveChild(II)V
    .locals 0

    .line 479
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->moveChildInList(II)Z

    .line 480
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    return-void
.end method

.method public removeAllChildren()V
    .locals 1

    .line 522
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 524
    invoke-virtual {p0, v0}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public removeChild(I)V
    .locals 3

    .line 490
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    if-ltz p1, :cond_2

    .line 494
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    goto :goto_0

    .line 500
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 501
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 502
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    const/4 v0, -0x1

    .line 504
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    :cond_2
    :goto_0
    return-void
.end method

.method public removeChild(Landroid/view/View;)V
    .locals 0

    .line 514
    invoke-direct {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->findChild(Landroid/view/View;)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/DraggableStackPanel;->removeChild(I)V

    return-void
.end method

.method public setChildAt(ILandroid/view/View;)Landroid/view/View;
    .locals 3

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getContainer()Landroid/widget/FrameLayout;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    if-ltz p1, :cond_2

    .line 381
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge p1, v1, :cond_2

    .line 385
    instance-of v1, p2, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    if-eqz v1, :cond_1

    .line 387
    move-object v1, p2

    check-cast v1, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;

    invoke-interface {v1, p0}, Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;->setDraggableContainer(Lcom/metamoji/ui/IDraggableContainer;)V

    .line 390
    :cond_1
    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 391
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 392
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->removeView(Landroid/view/View;)V

    .line 396
    invoke-direct {p0}, Lcom/metamoji/ui/DraggableStackPanel;->getOnItemLayoutChangedListener()Lcom/metamoji/ui/DraggableStackPanel$OnItemLayoutChangedListener;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 397
    iget-object v2, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2, p1, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-virtual {v0, p2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 400
    iget-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mPos1:Landroid/graphics/PointF;

    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/DraggableStackPanel;->getPosition(ILandroid/view/View;Landroid/graphics/PointF;)Landroid/graphics/PointF;

    move-result-object v0

    .line 401
    iget v2, v0, Landroid/graphics/PointF;->x:F

    invoke-virtual {p2, v2}, Landroid/view/View;->setX(F)V

    .line 402
    iget v0, v0, Landroid/graphics/PointF;->y:F

    invoke-virtual {p2, v0}, Landroid/view/View;->setY(F)V

    add-int/lit8 p1, p1, 0x1

    const/4 p2, -0x1

    .line 404
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/DraggableStackPanel;->reposition(II)V

    return-object v1

    .line 383
    :cond_2
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "DraggableStackPanel:setChildAt() count="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public setOnItemDropListener(Lcom/metamoji/ui/IDraggableContainer$OnItemDropListener;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 220
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDropListener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 222
    iput-object p1, p0, Lcom/metamoji/ui/DraggableStackPanel;->mDropListener:Ljava/lang/ref/WeakReference;

    return-void
.end method
