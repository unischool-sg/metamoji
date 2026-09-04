.class public Lcom/metamoji/nt/NtFocusOption;
.super Ljava/lang/Object;
.source "NtFocusOption.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private _tappos:Landroid/graphics/PointF;

.field private _tapposAvailable:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-virtual {p0}, Lcom/metamoji/nt/NtFocusOption;->setTapPosUnavailable()V

    return-void
.end method


# virtual methods
.method public getTapPos()Landroid/graphics/PointF;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/nt/NtFocusOption;->_tappos:Landroid/graphics/PointF;

    return-object v0
.end method

.method public isTapPosAvailable()Z
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/metamoji/nt/NtFocusOption;->_tapposAvailable:Z

    return v0
.end method

.method public setTapPos(Landroid/graphics/PointF;)V
    .locals 1

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/metamoji/nt/NtFocusOption;->_tapposAvailable:Z

    .line 40
    iput-object p1, p0, Lcom/metamoji/nt/NtFocusOption;->_tappos:Landroid/graphics/PointF;

    return-void
.end method

.method public setTapPosUnavailable()V
    .locals 2

    const/4 v0, 0x0

    .line 47
    iput-boolean v0, p0, Lcom/metamoji/nt/NtFocusOption;->_tapposAvailable:Z

    .line 48
    new-instance v0, Landroid/graphics/PointF;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Landroid/graphics/PointF;-><init>(FF)V

    iput-object v0, p0, Lcom/metamoji/nt/NtFocusOption;->_tappos:Landroid/graphics/PointF;

    return-void
.end method
