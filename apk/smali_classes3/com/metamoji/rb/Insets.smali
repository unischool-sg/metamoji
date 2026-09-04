.class final Lcom/metamoji/rb/Insets;
.super Ljava/lang/Object;
.source "RbRubberBand.java"


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 77
    invoke-direct {p0, v0, v0, v0, v0}, Lcom/metamoji/rb/Insets;-><init>(FFFF)V

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 80
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 81
    iput p1, p0, Lcom/metamoji/rb/Insets;->top:F

    .line 82
    iput p2, p0, Lcom/metamoji/rb/Insets;->left:F

    .line 83
    iput p3, p0, Lcom/metamoji/rb/Insets;->bottom:F

    .line 84
    iput p4, p0, Lcom/metamoji/rb/Insets;->right:F

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 95
    iput v0, p0, Lcom/metamoji/rb/Insets;->right:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->bottom:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->left:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->top:F

    return-void
.end method

.method public set(Lcom/metamoji/rb/Insets;)V
    .locals 1

    .line 88
    iget v0, p1, Lcom/metamoji/rb/Insets;->top:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->top:F

    .line 89
    iget v0, p1, Lcom/metamoji/rb/Insets;->left:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->left:F

    .line 90
    iget v0, p1, Lcom/metamoji/rb/Insets;->bottom:F

    iput v0, p0, Lcom/metamoji/rb/Insets;->bottom:F

    .line 91
    iget p1, p1, Lcom/metamoji/rb/Insets;->right:F

    iput p1, p0, Lcom/metamoji/rb/Insets;->right:F

    return-void
.end method
