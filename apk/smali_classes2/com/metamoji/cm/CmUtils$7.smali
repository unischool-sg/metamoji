.class Lcom/metamoji/cm/CmUtils$7;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Lcom/metamoji/cm/IFunction;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils;->getAsLong(Ljava/util/Map;Ljava/lang/String;Lcom/metamoji/cm/ISupplyer;)J
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/IFunction<",
        "Ljava/lang/Object;",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2078
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Object;)Ljava/lang/Long;
    .locals 0

    .line 2081
    invoke-static {p1}, Lcom/metamoji/cm/CmUtils;->toLong(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2078
    invoke-virtual {p0, p1}, Lcom/metamoji/cm/CmUtils$7;->apply(Ljava/lang/Object;)Ljava/lang/Long;

    move-result-object p1

    return-object p1
.end method
