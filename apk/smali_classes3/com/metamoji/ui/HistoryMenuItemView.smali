.class public Lcom/metamoji/ui/HistoryMenuItemView;
.super Landroid/widget/FrameLayout;
.source "HistoryMenuItemView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;
    }
.end annotation


# static fields
.field private static final LAYOUT_ID:I

.field private static final STYLE_ID:[I


# instance fields
.field private mCloseButton:Landroid/widget/ImageView;

.field private mClosing:Z

.field private mHistoryMenuEventHandler:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mMruItem:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/nt/NtMRUDocList$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mRect:Landroid/graphics/Rect;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    sget v0, Lcom/metamoji/noteanytime/R$layout;->control_history_menu:I

    sput v0, Lcom/metamoji/ui/HistoryMenuItemView;->LAYOUT_ID:I

    const/4 v0, 0x0

    .line 38
    sput-object v0, Lcom/metamoji/ui/HistoryMenuItemView;->STYLE_ID:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 52
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 53
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/HistoryMenuItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 57
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/HistoryMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/HistoryMenuItemView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 72
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 75
    sget v1, Lcom/metamoji/ui/HistoryMenuItemView;->LAYOUT_ID:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-eqz p2, :cond_0

    .line 77
    sget-object v0, Lcom/metamoji/ui/HistoryMenuItemView;->STYLE_ID:[I

    if-eqz v0, :cond_0

    .line 78
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 86
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->closeIcon:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mCloseButton:Landroid/widget/ImageView;

    .line 90
    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mRect:Landroid/graphics/Rect;

    return-void
.end method

.method private isEventOnCloseButton(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 157
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 158
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 160
    invoke-direct {p0, v0, p1}, Lcom/metamoji/ui/HistoryMenuItemView;->isEventOnItem(II)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return v1

    .line 163
    :cond_0
    iget-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v2, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/widget/ImageView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result p1

    if-nez p1, :cond_1

    return v1

    .line 166
    :cond_1
    iget-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mRect:Landroid/graphics/Rect;

    iget p1, p1, Landroid/graphics/Rect;->left:I

    if-gt p1, v0, :cond_2

    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method private isEventOnItem(II)Z
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HistoryMenuItemView;->getGlobalVisibleRect(Landroid/graphics/Rect;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p1, 0x0

    return p1

    .line 147
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    return p1
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 1

    .line 133
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    const/high16 v0, -0x80000000

    invoke-static {p1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 177
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    const/4 v2, 0x0

    if-eq v0, v1, :cond_7

    const/4 v3, 0x2

    if-eq v0, v3, :cond_4

    const/4 v3, 0x3

    if-eq v0, v3, :cond_3

    const/16 v3, 0x9

    if-eq v0, v3, :cond_2

    const/16 v3, 0xa

    if-eq v0, v3, :cond_1

    .line 219
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto/16 :goto_2

    :cond_0
    return v2

    .line 212
    :cond_1
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/HistoryMenuItemView;->setHovered(Z)V

    goto :goto_2

    .line 208
    :cond_2
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/HistoryMenuItemView;->setHovered(Z)V

    goto :goto_2

    .line 205
    :cond_3
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/HistoryMenuItemView;->setPressed(Z)V

    goto :goto_2

    .line 184
    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    float-to-int v0, v0

    .line 185
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    float-to-int p1, p1

    if-ltz v0, :cond_6

    if-ltz p1, :cond_6

    .line 186
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryMenuItemView;->getWidth()I

    move-result v3

    if-lt v3, v0, :cond_6

    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryMenuItemView;->getHeight()I

    move-result v0

    if-ge v0, p1, :cond_5

    goto :goto_0

    :cond_5
    move v2, v1

    .line 189
    :cond_6
    :goto_0
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/HistoryMenuItemView;->setPressed(Z)V

    goto :goto_2

    .line 192
    :cond_7
    invoke-virtual {p0}, Lcom/metamoji/ui/HistoryMenuItemView;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 193
    iget-object v0, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mHistoryMenuEventHandler:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;

    if-eqz v0, :cond_9

    .line 195
    iget-boolean v3, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mClosing:Z

    if-eqz v3, :cond_8

    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryMenuItemView;->isEventOnCloseButton(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 196
    iget-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mMruItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;->onMenuItemDelete(Lcom/metamoji/nt/NtMRUDocList$Item;)V

    goto :goto_1

    .line 198
    :cond_8
    iget-object p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mMruItem:Ljava/lang/ref/WeakReference;

    invoke-virtual {p1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/metamoji/nt/NtMRUDocList$Item;

    invoke-interface {v0, p1}, Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;->onMenuItemSelect(Lcom/metamoji/nt/NtMRUDocList$Item;)V

    .line 202
    :cond_9
    :goto_1
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/HistoryMenuItemView;->setPressed(Z)V

    goto :goto_2

    .line 179
    :cond_a
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/HistoryMenuItemView;->setPressed(Z)V

    .line 180
    invoke-direct {p0, p1}, Lcom/metamoji/ui/HistoryMenuItemView;->isEventOnCloseButton(Landroid/view/MotionEvent;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mClosing:Z

    :goto_2
    return v1
.end method

.method public setDrawables(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 1

    .line 101
    sget v0, Lcom/metamoji/noteanytime/R$id;->itemView:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HistoryMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 102
    sget p2, Lcom/metamoji/noteanytime/R$id;->label:I

    invoke-virtual {p0, p2}, Lcom/metamoji/ui/HistoryMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 103
    sget p1, Lcom/metamoji/noteanytime/R$id;->docIcon:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setMenuItemInfo(Lcom/metamoji/nt/NtMRUDocList$Item;Lcom/metamoji/ui/HistoryMenuItemView$HistoryMenuEventHandler;)V
    .locals 1

    .line 116
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mHistoryMenuEventHandler:Ljava/lang/ref/WeakReference;

    .line 117
    new-instance p2, Ljava/lang/ref/WeakReference;

    invoke-direct {p2, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p2, p0, Lcom/metamoji/ui/HistoryMenuItemView;->mMruItem:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 112
    sget v0, Lcom/metamoji/noteanytime/R$id;->label:I

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/HistoryMenuItemView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
