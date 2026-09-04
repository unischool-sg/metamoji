.class public Lcom/metamoji/ui/common/UiImageToggleButton;
.super Landroid/widget/ImageButton;
.source "UiImageToggleButton.java"


# instance fields
.field private mManualReset:Z

.field private mOuterListener:Landroid/view/View$OnClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmManualReset(Lcom/metamoji/ui/common/UiImageToggleButton;)Z
    .locals 0

    iget-boolean p0, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mManualReset:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOuterListener(Lcom/metamoji/ui/common/UiImageToggleButton;)Landroid/view/View$OnClickListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mOuterListener:Landroid/view/View$OnClickListener;

    return-object p0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mManualReset:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mOuterListener:Landroid/view/View$OnClickListener;

    .line 20
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiImageToggleButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 24
    invoke-direct {p0, p1, p2, v0}, Lcom/metamoji/ui/common/UiImageToggleButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 40
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mManualReset:Z

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mOuterListener:Landroid/view/View$OnClickListener;

    .line 29
    invoke-virtual {p0}, Lcom/metamoji/ui/common/UiImageToggleButton;->init()V

    return-void
.end method


# virtual methods
.method protected init()V
    .locals 1

    .line 60
    new-instance v0, Lcom/metamoji/ui/common/UiImageToggleButton$1;

    invoke-direct {v0, p0}, Lcom/metamoji/ui/common/UiImageToggleButton$1;-><init>(Lcom/metamoji/ui/common/UiImageToggleButton;)V

    invoke-super {p0, v0}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method protected setManualReset(Z)V
    .locals 0

    .line 83
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mManualReset:Z

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    .line 51
    invoke-super {p0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    iput-object p1, p0, Lcom/metamoji/ui/common/UiImageToggleButton;->mOuterListener:Landroid/view/View$OnClickListener;

    return-void
.end method
