.class public Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsUpdateMemberTypeParams.java"


# instance fields
.field public driveId:Ljava/lang/String;

.field public userList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 7
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBeanToMap()Ljava/util/HashMap;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 21
    const-string v1, "userList"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateMemberTypeParams;->userList:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
