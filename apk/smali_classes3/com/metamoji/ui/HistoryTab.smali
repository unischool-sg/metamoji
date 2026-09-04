.class public Lcom/metamoji/ui/HistoryTab;
.super Landroid/widget/LinearLayout;
.source "HistoryTab.java"

# interfaces
.implements Lcom/metamoji/ui/IDraggableContainer$IDraggableItem;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/HistoryTab$TouchInfo;,
        Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;,
        Lcom/metamoji/ui/HistoryTab$State;
    }
.end annotation


# static fields
.field private static final LAYOUT_ID:I

.field private static final STYLE_ID:[I


# instance fields
.field private mClientData:Ljava/lang/Object;

.field private mCloseButton:Landroid/widget/ImageView;

.field private mContainer:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/IDraggableContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mDocIcon:Landroid/widget/ImageView;

.field private mListener:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mTextView:Landroid/widget/TextView;

.field mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCloseButton(Lcom/metamoji/ui/HistoryTab;)Landroid/widget/ImageView;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/HistoryTab;->mCloseButton:Landroid/widget/ImageView;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mdraggableContainer(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/IDraggableContainer;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryTab;->draggableContainer()Lcom/metamoji/ui/IDraggableContainer;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mgetHistoryTabEventListener(Lcom/metamoji/ui/HistoryTab;)Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/ui/HistoryTab;->getHistoryTabEventListener()Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 30
    sget v0, Lcom/metamoji/noteanytime/R$layout;->control_history_tab:I

    sput v0, Lcom/metamoji/ui/HistoryTab;->LAYOUT_ID:I

    const/4 v0, 0x0

    .line 31
    sput-object v0, Lcom/metamoji/ui/HistoryTab;->STYLE_ID:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 47
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    .line 48
    invoke-direct {p0, p1, v0}, Lcom/metamoji/ui/HistoryTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 59
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/HistoryTab;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 74
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 75
    invoke-direct {p0, p1, p2}, Lcom/metamoji/ui/HistoryTab;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private draggableContainer()Lcom/metamoji/ui/IDraggableContainer;
    .locals 1

    .line 159
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mContainer:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/IDraggableContainer;

    return-object v0
.end method

.method private getHistoryTabEventListener()Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;
    .locals 1

    .line 136
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mListener:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 85
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 88
    sget v1, Lcom/metamoji/ui/HistoryTab;->LAYOUT_ID:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    if-eqz p2, :cond_0

    .line 90
    sget-object v0, Lcom/metamoji/ui/HistoryTab;->STYLE_ID:[I

    if-eqz v0, :cond_0

    .line 91
    invoke-virtual {p1, p2, v0}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 99
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 102
    :cond_0
    sget p1, Lcom/metamoji/noteanytime/R$id;->label:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mTextView:Landroid/widget/TextView;

    .line 103
    sget p1, Lcom/metamoji/noteanytime/R$id;->closeIcon:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mCloseButton:Landroid/widget/ImageView;

    .line 104
    sget p1, Lcom/metamoji/noteanytime/R$id;->docIcon:I

    invoke-virtual {p0, p1}, Lcom/metamoji/ui/HistoryTab;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mDocIcon:Landroid/widget/ImageView;

    .line 106
    new-instance p1, Lcom/metamoji/ui/HistoryTab$TouchInfo;

    invoke-direct {p1, p0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;-><init>(Lcom/metamoji/ui/HistoryTab;)V

    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;

    return-void
.end method


# virtual methods
.method public getClientData()Ljava/lang/Object;
    .locals 1

    .line 114
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mClientData:Ljava/lang/Object;

    return-object v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    .line 432
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_5

    if-eq v0, v1, :cond_4

    const/4 v3, 0x2

    if-eq v0, v3, :cond_3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v3, 0xa

    if-eq v0, v3, :cond_0

    goto :goto_0

    .line 450
    :cond_0
    invoke-virtual {p0, v2}, Lcom/metamoji/ui/HistoryTab;->setHovered(Z)V

    goto :goto_0

    .line 446
    :cond_1
    invoke-virtual {p0, v1}, Lcom/metamoji/ui/HistoryTab;->setHovered(Z)V

    :goto_0
    move v0, v2

    goto :goto_1

    .line 443
    :cond_2
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;

    invoke-virtual {v0}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->cancel()Z

    move-result v0

    goto :goto_1

    .line 437
    :cond_3
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->move(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 440
    :cond_4
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->release(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_1

    .line 434
    :cond_5
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mTouchInfo:Lcom/metamoji/ui/HistoryTab$TouchInfo;

    invoke-virtual {v0, p1}, Lcom/metamoji/ui/HistoryTab$TouchInfo;->press(Landroid/view/MotionEvent;)Z

    move-result v0

    :goto_1
    if-nez v0, :cond_7

    .line 455
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    if-eqz p1, :cond_6

    goto :goto_2

    :cond_6
    return v2

    :cond_7
    :goto_2
    return v1
.end method

.method public setClientData(Ljava/lang/Object;)V
    .locals 0

    .line 110
    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mClientData:Ljava/lang/Object;

    return-void
.end method

.method public setDraggableContainer(Lcom/metamoji/ui/IDraggableContainer;)V
    .locals 1

    .line 150
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mContainer:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setDrawables(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/StateListDrawable;Landroid/graphics/drawable/StateListDrawable;)V
    .locals 0

    .line 183
    invoke-virtual {p0, p2}, Lcom/metamoji/ui/HistoryTab;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    iget-object p2, p0, Lcom/metamoji/ui/HistoryTab;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 185
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mDocIcon:Landroid/widget/ImageView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 186
    iget-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mDocIcon:Landroid/widget/ImageView;

    invoke-virtual {p1, p3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setHistoryTabEventListener(Lcom/metamoji/ui/HistoryTab$IHistoryTabEventHandler;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 124
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mListener:Ljava/lang/ref/WeakReference;

    return-void

    :cond_0
    const/4 p1, 0x0

    .line 126
    iput-object p1, p0, Lcom/metamoji/ui/HistoryTab;->mListener:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 1

    .line 172
    iget-object v0, p0, Lcom/metamoji/ui/HistoryTab;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
