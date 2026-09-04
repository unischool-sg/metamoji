.class public Lcom/metamoji/ui/common/UiRadioContoller;
.super Ljava/lang/Object;
.source "UiRadioContoller.java"

# interfaces
.implements Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;


# instance fields
.field private mButtonIds:[I

.field private mContainerDialog:Landroid/app/Dialog;

.field private mContainerView:Landroid/view/View;

.field private mSelectChangedListener:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

.field private mSelected:I


# direct methods
.method public constructor <init>(Landroid/app/Dialog;[I)V
    .locals 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    .line 30
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    .line 31
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerDialog:Landroid/app/Dialog;

    const/4 p1, 0x0

    .line 32
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerView:Landroid/view/View;

    .line 33
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->init(I)V

    return-void
.end method

.method public constructor <init>(Landroid/view/View;[I)V
    .locals 1

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 20
    iput v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    .line 24
    iput-object p2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    .line 25
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerView:Landroid/view/View;

    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerDialog:Landroid/app/Dialog;

    .line 27
    invoke-direct {p0, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->init(I)V

    return-void
.end method

.method private findViewById(I)Landroid/view/View;
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerDialog:Landroid/app/Dialog;

    if-eqz v0, :cond_0

    .line 38
    invoke-virtual {v0, p1}, Landroid/app/Dialog;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    .line 39
    :cond_0
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mContainerView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 40
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    return-object p1

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method private init(I)V
    .locals 4

    .line 89
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    array-length v0, v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    :goto_0
    if-ltz v0, :cond_2

    .line 90
    iget-object v2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    aget v2, v2, v0

    invoke-direct {p0, v2}, Lcom/metamoji/ui/common/UiRadioContoller;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 92
    iget-object v3, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    aget v3, v3, v0

    if-ne v3, p1, :cond_0

    move v3, v1

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setSelected(Z)V

    .line 93
    instance-of v3, v2, Lcom/metamoji/ui/common/IUiRadioItem;

    if-eqz v3, :cond_1

    .line 94
    check-cast v2, Lcom/metamoji/ui/common/IUiRadioItem;

    invoke-interface {v2, p0}, Lcom/metamoji/ui/common/IUiRadioItem;->setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 98
    :cond_2
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    if-eq v0, p1, :cond_3

    .line 99
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    .line 100
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelectChangedListener:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    if-eqz v0, :cond_3

    .line 101
    invoke-interface {v0, p1}, Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;->onSelected(I)V

    :cond_3
    return-void
.end method


# virtual methods
.method public getSelected()I
    .locals 1

    .line 111
    iget v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    return v0
.end method

.method public idFromIndex(I)I
    .locals 1

    .line 126
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    aget p1, v0, p1

    return p1
.end method

.method public indexFromId(I)I
    .locals 1

    .line 123
    iget-object v0, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mButtonIds:[I

    invoke-static {v0, p1}, Ljava/util/Arrays;->binarySearch([II)I

    move-result p1

    return p1
.end method

.method public onSelected(I)V
    .locals 0

    .line 119
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->select(I)V

    return-void
.end method

.method public select(I)V
    .locals 1

    const/4 v0, 0x0

    .line 58
    invoke-virtual {p0, p1, v0}, Lcom/metamoji/ui/common/UiRadioContoller;->select(IZ)V

    return-void
.end method

.method public select(IZ)V
    .locals 1

    if-nez p2, :cond_0

    .line 61
    iget p2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    if-ne p1, p2, :cond_0

    goto :goto_0

    .line 64
    :cond_0
    iget p2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    if-lez p2, :cond_1

    .line 65
    invoke-direct {p0, p2}, Lcom/metamoji/ui/common/UiRadioContoller;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 67
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    :cond_1
    if-lez p1, :cond_2

    .line 71
    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiRadioContoller;->findViewById(I)Landroid/view/View;

    move-result-object p2

    if-eqz p2, :cond_2

    const/4 v0, 0x1

    .line 73
    invoke-virtual {p2, v0}, Landroid/view/View;->setSelected(Z)V

    .line 76
    :cond_2
    iput p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelected:I

    .line 78
    iget-object p2, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelectChangedListener:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    if-eqz p2, :cond_3

    .line 79
    invoke-interface {p2, p1}, Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;->onSelected(I)V

    :cond_3
    :goto_0
    return-void
.end method

.method public setSelectChangedListener(Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;)V
    .locals 0

    .line 49
    iput-object p1, p0, Lcom/metamoji/ui/common/UiRadioContoller;->mSelectChangedListener:Lcom/metamoji/ui/common/IUiRadioItem$IUiSelectChanged;

    return-void
.end method
