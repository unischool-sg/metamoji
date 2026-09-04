.class public Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsClassRoomLoginParam.java"


# instance fields
.field public classGroupId:Ljava/lang/String;

.field public coLoginId:Ljava/lang/String;

.field public idNumber:Ljava/lang/String;

.field public password:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
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

    .line 23
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 24
    const-string v1, "coLoginId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    const-string v1, "classGroupId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->classGroupId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "idNumber"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->idNumber:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "password"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsClassRoomLoginParam;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
