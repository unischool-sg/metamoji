.class Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;
.super Ljava/lang/Object;
.source "NtJumpList.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/itemlist/NtJumpList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CommandOptions"
.end annotation


# instance fields
.field public from:I

.field public n:I

.field public position:I

.field public to:I


# direct methods
.method constructor <init>()V
    .locals 1

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 55
    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->n:I

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->to:I

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->from:I

    iput v0, p0, Lcom/metamoji/nt/itemlist/NtJumpList$CommandOptions;->position:I

    return-void
.end method
