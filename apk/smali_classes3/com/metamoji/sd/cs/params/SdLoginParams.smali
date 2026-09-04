.class public Lcom/metamoji/sd/cs/params/SdLoginParams;
.super Lcom/metamoji/sd/cs/params/SdRequestParams;
.source "SdLoginParams.java"


# instance fields
.field public password:Ljava/lang/String;

.field public qwd:Ljava/lang/String;

.field public userId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/sd/cs/params/SdRequestParams;-><init>()V

    return-void
.end method


# virtual methods
.method protected toMap()Ljava/util/HashMap;
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

    .line 13
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 14
    const-string/jumbo v1, "userId"

    iget-object v2, p0, Lcom/metamoji/sd/cs/params/SdLoginParams;->userId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    iget-object v1, p0, Lcom/metamoji/sd/cs/params/SdLoginParams;->password:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 16
    const-string v2, "password"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    :cond_0
    iget-object v1, p0, Lcom/metamoji/sd/cs/params/SdLoginParams;->qwd:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 19
    const-string v2, "qwd"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-object v0
.end method
