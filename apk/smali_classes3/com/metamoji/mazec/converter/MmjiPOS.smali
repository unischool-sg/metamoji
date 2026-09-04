.class public Lcom/metamoji/mazec/converter/MmjiPOS;
.super Ljava/lang/Object;
.source "MmjiPOS.java"


# instance fields
.field public left:I

.field public right:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 6
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiPOS;->left:I

    .line 9
    iput v0, p0, Lcom/metamoji/mazec/converter/MmjiPOS;->right:I

    return-void
.end method

.method public constructor <init>(II)V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/metamoji/mazec/converter/MmjiPOS;->left:I

    .line 25
    iput p2, p0, Lcom/metamoji/mazec/converter/MmjiPOS;->right:I

    return-void
.end method
