.class Lcom/metamoji/cm/CmUtils$6;
.super Ljava/lang/Object;
.source "CmUtils.java"

# interfaces
.implements Lcom/metamoji/cm/ISupplyer;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/metamoji/cm/CmUtils;->getAsIntOrNull(Ljava/util/Map;Ljava/lang/String;)Ljava/lang/Integer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/metamoji/cm/ISupplyer<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public get()Ljava/lang/Integer;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 2049
    invoke-virtual {p0}, Lcom/metamoji/cm/CmUtils$6;->get()Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
