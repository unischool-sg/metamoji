.class public Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsPostCrashLogsParam.java"


# instance fields
.field public companyId:Ljava/lang/String;

.field public fileEntity:Ljava/lang/String;

.field public keyword:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
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

    .line 14
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 15
    const-string v1, "userId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v1, "companyId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "keyword"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;->keyword:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "fileEntity"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsPostCrashLogsParam;->fileEntity:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
