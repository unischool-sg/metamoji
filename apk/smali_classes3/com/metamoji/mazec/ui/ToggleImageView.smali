.class public Lcom/metamoji/mazec/ui/ToggleImageView;
.super Landroid/widget/ImageView;
.source "ToggleImageView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;
    }
.end annotation


# static fields
.field public static final CHECKED:I = 0x1

.field public static final PRESS_CHECKED:I = 0x3

.field public static final PRESS_UNCHECKED:I = 0x2

.field public static final UNCHECKED:I


# instance fields
.field private mCheckState:I

.field private mOnChangeListener:Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;


# direct methods
.method static bridge synthetic -$$Nest$fgetmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;)I
    .locals 0

    iget p0, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mCheckState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView;)Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mOnChangeListener:Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fputmCheckState(Lcom/metamoji/mazec/ui/ToggleImageView;I)V
    .locals 0

    iput p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mCheckState:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 27
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mOnChangeListener:Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    .line 28
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ToggleImageView;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 20
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mOnChangeListener:Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    .line 37
    invoke-virtual {p0}, Lcom/metamoji/mazec/ui/ToggleImageView;->init()V

    return-void
.end method


# virtual methods
.method public init()V
    .locals 2

    const/4 v0, 0x0

    .line 45
    iput v0, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mCheckState:I

    .line 46
    invoke-virtual {p0, v0}, Lcom/metamoji/mazec/ui/ToggleImageView;->setImageLevel(I)V

    .line 48
    sget-object v0, Lcom/metamoji/mazec/BuildConfig;->DEVICE_VENDOR:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    sget-object v1, Lcom/metamoji/mazec/BuildOption$DeviceVendor;->SAMSUNG:Lcom/metamoji/mazec/BuildOption$DeviceVendor;

    if-ne v0, v1, :cond_0

    .line 49
    new-instance v0, Lcom/metamoji/mazec/ui/ToggleImageView$1;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/ToggleImageView$1;-><init>(Lcom/metamoji/mazec/ui/ToggleImageView;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    return-void

    .line 70
    :cond_0
    new-instance v0, Lcom/metamoji/mazec/ui/ToggleImageView$2;

    invoke-direct {v0, p0}, Lcom/metamoji/mazec/ui/ToggleImageView$2;-><init>(Lcom/metamoji/mazec/ui/ToggleImageView;)V

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public isChecked()Z
    .locals 2

    .line 96
    iget v0, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mCheckState:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setChecked(Z)V
    .locals 0

    .line 87
    iput p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mCheckState:I

    .line 88
    invoke-virtual {p0, p1}, Lcom/metamoji/mazec/ui/ToggleImageView;->setImageLevel(I)V

    return-void
.end method

.method public setOnChangeListener(Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;)V
    .locals 0

    .line 112
    iput-object p1, p0, Lcom/metamoji/mazec/ui/ToggleImageView;->mOnChangeListener:Lcom/metamoji/mazec/ui/ToggleImageView$OnChangeListener;

    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0

    return-void
.end method
