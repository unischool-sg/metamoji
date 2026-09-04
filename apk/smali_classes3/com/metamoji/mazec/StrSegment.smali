.class public Lcom/metamoji/mazec/StrSegment;
.super Ljava/lang/Object;
.source "StrSegment.java"


# instance fields
.field public from:I

.field public string:Ljava/lang/String;

.field public to:I


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    const/4 v0, -0x1

    .line 20
    invoke-direct {p0, p1, v0, v0}, Lcom/metamoji/mazec/StrSegment;-><init>(Ljava/lang/String;II)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lcom/metamoji/mazec/StrSegment;->string:Ljava/lang/String;

    .line 32
    iput p2, p0, Lcom/metamoji/mazec/StrSegment;->from:I

    .line 33
    iput p3, p0, Lcom/metamoji/mazec/StrSegment;->to:I

    return-void
.end method
