.class public Lcom/metamoji/noteanytime/ActionBarButton;
.super Landroid/widget/ImageView;
.source "ActionBarButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;,
        Lcom/metamoji/noteanytime/ActionBarButton$Body;
    }
.end annotation


# static fields
.field private static BUTTON_SIZE:F = 40.0f


# instance fields
.field private _body:Landroid/view/View;

.field private _clickable:Z

.field private _container:Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

.field private _contextClickable:Z

.field private _initPos:Z

.field private _longClickable:Z

.field _onClickListener:Landroid/view/View$OnClickListener;

.field _onContextClickListener:Landroid/view/View$OnContextClickListener;

.field _onLongClickListener:Landroid/view/View$OnLongClickListener;


# direct methods
.method static bridge synthetic -$$Nest$fget_container(Lcom/metamoji/noteanytime/ActionBarButton;)Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;
    .locals 0

    iget-object p0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_container:Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fput_initPos(Lcom/metamoji/noteanytime/ActionBarButton;Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_initPos:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$madjustButtonPos(Lcom/metamoji/noteanytime/ActionBarButton;)V
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->adjustButtonPos()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mgetCenter(Lcom/metamoji/noteanytime/ActionBarButton;)Landroid/graphics/PointF;
    .locals 0

    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getCenter()Landroid/graphics/PointF;

    move-result-object p0

    return-object p0
.end method

.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_initPos:Z

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    .line 150
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 160
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    .line 39
    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 42
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_initPos:Z

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    .line 150
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 160
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    .line 43
    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->init()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 46
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 31
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    .line 32
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    .line 33
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    .line 55
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_initPos:Z

    const/4 p1, 0x0

    .line 140
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    .line 150
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    .line 160
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    .line 47
    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->init()V

    return-void
.end method

.method private adjustButtonPos()V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_container:Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    invoke-interface {v0}, Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;->getActionBarButtonsLayer()Landroid/view/ViewGroup;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 82
    :cond_0
    sget v1, Lcom/metamoji/noteanytime/ActionBarButton;->BUTTON_SIZE:F

    invoke-static {v1}, Lcom/metamoji/cm/CmUtils;->dipToPx(F)F

    move-result v1

    float-to-int v1, v1

    .line 84
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-nez v2, :cond_1

    .line 85
    new-instance v2, Lcom/metamoji/noteanytime/ActionBarButton$Body;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, p0, v3}, Lcom/metamoji/noteanytime/ActionBarButton$Body;-><init>(Lcom/metamoji/noteanytime/ActionBarButton;Landroid/content/Context;)V

    iput-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    .line 86
    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 87
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    .line 88
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 89
    iput v1, v2, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 92
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    new-instance v3, Lcom/metamoji/noteanytime/ActionBarButton$2;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/ActionBarButton$2;-><init>(Lcom/metamoji/noteanytime/ActionBarButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setClickable(Z)V

    .line 102
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    new-instance v3, Lcom/metamoji/noteanytime/ActionBarButton$3;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/ActionBarButton$3;-><init>(Lcom/metamoji/noteanytime/ActionBarButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 112
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setLongClickable(Z)V

    .line 114
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    new-instance v3, Lcom/metamoji/noteanytime/ActionBarButton$4;

    invoke-direct {v3, p0}, Lcom/metamoji/noteanytime/ActionBarButton$4;-><init>(Lcom/metamoji/noteanytime/ActionBarButton;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V

    .line 128
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    iget-boolean v3, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    invoke-virtual {v2, v3}, Landroid/view/View;->setContextClickable(Z)V

    .line 130
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->isEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setEnabled(Z)V

    .line 134
    :cond_1
    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getCenter()Landroid/graphics/PointF;

    move-result-object v2

    .line 135
    invoke-static {v2, p0, v0}, Lcom/metamoji/cm/CmUtils;->transformPoint(Landroid/graphics/PointF;Landroid/view/View;Landroid/view/View;)Landroid/graphics/PointF;

    move-result-object v0

    .line 136
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    iget v3, v0, Landroid/graphics/PointF;->x:F

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    sub-float/2addr v3, v1

    invoke-virtual {v2, v3}, Landroid/view/View;->setTranslationX(F)V

    .line 137
    iget-object v2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    sub-float/2addr v0, v1

    invoke-virtual {v2, v0}, Landroid/view/View;->setTranslationY(F)V

    return-void
.end method

.method private getCenter()Landroid/graphics/PointF;
    .locals 3

    .line 172
    new-instance v0, Landroid/graphics/PointF;

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getHeight()I

    move-result v2

    div-int/lit8 v2, v2, 0x2

    int-to-float v2, v2

    invoke-direct {v0, v1, v2}, Landroid/graphics/PointF;-><init>(FF)V

    return-object v0
.end method

.method private init()V
    .locals 1

    const/4 v0, 0x0

    .line 51
    invoke-super {p0, v0}, Landroid/widget/ImageView;->setClickable(Z)V

    .line 52
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    iput-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_container:Lcom/metamoji/noteanytime/ActionBarButton$IActionBarContainer;

    return-void
.end method


# virtual methods
.method public isClickable()Z
    .locals 1

    .line 206
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    return v0
.end method

.method public isContextClickable()Z
    .locals 1

    .line 232
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    return v0
.end method

.method public isLongClickable()Z
    .locals 1

    .line 219
    iget-boolean v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    return v0
.end method

.method public setClickable(Z)V
    .locals 1

    .line 211
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_clickable:Z

    .line 212
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 213
    invoke-virtual {v0, p1}, Landroid/view/View;->setClickable(Z)V

    :cond_0
    return-void
.end method

.method public setContextClickable(Z)V
    .locals 1

    .line 237
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_contextClickable:Z

    .line 239
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {v0, p1}, Landroid/view/View;->setContextClickable(Z)V

    :cond_0
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1

    .line 247
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 248
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 249
    invoke-virtual {v0, p1}, Landroid/view/View;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method protected setFrame(IIII)Z
    .locals 0

    .line 59
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ImageView;->setFrame(IIII)Z

    move-result p1

    .line 60
    iget-boolean p2, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_initPos:Z

    if-nez p2, :cond_0

    .line 62
    new-instance p2, Lcom/metamoji/noteanytime/ActionBarButton$1;

    invoke-direct {p2, p0}, Lcom/metamoji/noteanytime/ActionBarButton$1;-><init>(Lcom/metamoji/noteanytime/ActionBarButton;)V

    invoke-virtual {p0, p2}, Lcom/metamoji/noteanytime/ActionBarButton;->post(Ljava/lang/Runnable;)Z

    return p1

    .line 70
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->adjustButtonPos()V

    return p1
.end method

.method public setLongClickable(Z)V
    .locals 1

    .line 224
    iput-boolean p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_longClickable:Z

    .line 225
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 226
    invoke-virtual {v0, p1}, Landroid/view/View;->setLongClickable(Z)V

    :cond_0
    return-void
.end method

.method public setOnClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->isClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 145
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/ActionBarButton;->setClickable(Z)V

    .line 147
    :cond_0
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onClickListener:Landroid/view/View$OnClickListener;

    return-void
.end method

.method public setOnContextClickListener(Landroid/view/View$OnContextClickListener;)V
    .locals 1

    .line 164
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->isContextClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 165
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/ActionBarButton;->setContextClickable(Z)V

    .line 167
    :cond_0
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onContextClickListener:Landroid/view/View$OnContextClickListener;

    return-void
.end method

.method public setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V
    .locals 1

    .line 154
    invoke-virtual {p0}, Lcom/metamoji/noteanytime/ActionBarButton;->isLongClickable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 155
    invoke-virtual {p0, v0}, Lcom/metamoji/noteanytime/ActionBarButton;->setLongClickable(Z)V

    .line 157
    :cond_0
    iput-object p1, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_onLongClickListener:Landroid/view/View$OnLongClickListener;

    return-void
.end method

.method public setSelected(Z)V
    .locals 1

    .line 254
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setSelected(Z)V

    .line 255
    iget-object v0, p0, Lcom/metamoji/noteanytime/ActionBarButton;->_body:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0, p1}, Landroid/view/View;->setSelected(Z)V

    :cond_0
    return-void
.end method
