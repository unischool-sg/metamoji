.class Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject$1;
.super Landroid/util/SparseArray;
.source "CtTaggedObjectFilter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/SparseArray<",
        "Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 5

    .line 36
    invoke-direct {p0}, Landroid/util/SparseArray;-><init>()V

    .line 37
    invoke-static {}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->values()[Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, v0, v2

    .line 38
    invoke-virtual {v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject;->getValue()I

    move-result v4

    invoke-virtual {p0, v4, v3}, Lcom/metamoji/ctold/CtTaggedObjectFilter$CtObject$1;->append(ILjava/lang/Object;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
