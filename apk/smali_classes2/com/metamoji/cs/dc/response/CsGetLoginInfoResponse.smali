.class public Lcom/metamoji/cs/dc/response/CsGetLoginInfoResponse;
.super Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;
.source "CsGetLoginInfoResponse.java"


# instance fields
.field public list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/metamoji/cs/dc/user/CsLoginInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/metamoji/cs/dc/response/CsResponseBaseAbstract;-><init>()V

    return-void
.end method
