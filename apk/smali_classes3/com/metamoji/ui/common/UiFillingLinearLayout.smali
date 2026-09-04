.class public Lcom/metamoji/ui/common/UiFillingLinearLayout;
.super Landroid/widget/LinearLayout;
.source "UiFillingLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;
    }
.end annotation


# instance fields
.field _fixSize:Z

.field public onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/metamoji/cm/CmEventListener<",
            "Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 37
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 31
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->_fixSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 40
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 31
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->_fixSize:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 43
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    new-instance p1, Lcom/metamoji/cm/CmEventListener;

    invoke-direct {p1}, Lcom/metamoji/cm/CmEventListener;-><init>()V

    iput-object p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    const/4 p1, 0x0

    .line 34
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->_fixSize:Z

    return-void
.end method


# virtual methods
.method public fixSize()V
    .locals 4

    .line 59
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 60
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getOrientation()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    if-nez v1, :cond_0

    .line 61
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getHeight()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 62
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getChildCount()I

    move-result v0

    :goto_0
    if-ge v3, v0, :cond_1

    .line 64
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 65
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 68
    :cond_0
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getWidth()I

    move-result v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 69
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getChildCount()I

    move-result v0

    :goto_1
    if-ge v3, v0, :cond_1

    .line 71
    invoke-virtual {p0, v3}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 72
    iput v2, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 77
    :cond_1
    new-instance v0, Lcom/metamoji/ui/common/UiFillingLinearLayout$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout$1;-><init>(Lcom/metamoji/ui/common/UiFillingLinearLayout;)V

    invoke-virtual {p0, v0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 7

    .line 48
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/LinearLayout;->onSizeChanged(IIII)V

    .line 50
    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->_fixSize:Z

    if-nez v0, :cond_0

    .line 51
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiFillingLinearLayout;->fixSize()V

    const/4 v0, 0x1

    .line 52
    iput-boolean v0, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->_fixSize:Z

    .line 55
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiFillingLinearLayout;->onSizeChangedListener:Lcom/metamoji/cm/CmEventListener;

    new-instance v1, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;

    const/4 v6, 0x0

    move v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/metamoji/ui/common/UiFillingLinearLayout$SizeChangedEventArg;-><init>(IIIILcom/metamoji/ui/common/UiFillingLinearLayout-IA;)V

    invoke-virtual {v0, v1}, Lcom/metamoji/cm/CmEventListener;->fire(Ljava/lang/Object;)V

    return-void
.end method
