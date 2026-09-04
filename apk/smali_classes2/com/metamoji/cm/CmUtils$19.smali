.class Lcom/metamoji/cm/CmUtils$19;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Lcom/metamoji/cm/IFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils;->getAsT(Ljava/util/Map;Ljava/lang/Object;Lcom/metamoji/cm/ISupplyer;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IFunction<",
        "TTValue;TTResult;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2334
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTValue;)TTResult;"
        }
    .end annotation

    return-object p1
.end method
