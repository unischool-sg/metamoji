.class public Lcom/metamoji/cm/Range;
.super Ljava/lang/Object;
.source "Range.java"


# instance fields
.field public length:I

.field public location:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput p1, p0, Lcom/metamoji/cm/Range;->location:I

    .line 10
    iput p2, p0, Lcom/metamoji/cm/Range;->length:I

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/Range;)V
    .locals 1

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    iget v0, p1, Lcom/metamoji/cm/Range;->location:I

    iput v0, p0, Lcom/metamoji/cm/Range;->location:I

    .line 15
    iget p1, p1, Lcom/metamoji/cm/Range;->length:I

    iput p1, p0, Lcom/metamoji/cm/Range;->length:I

    return-void
.end method
