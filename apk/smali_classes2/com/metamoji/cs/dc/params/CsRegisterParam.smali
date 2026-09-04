.class public Lcom/metamoji/cs/dc/params/CsRegisterParam;
.super Lcom/metamoji/cs/dc/params/CsParamBaseAbstract;
.source "CsRegisterParam.java"


# instance fields
.field public coLoginId:Ljava/lang/String;

.field public companyId:Ljava/lang/String;

.field public email:Ljava/lang/String;

.field public loginName:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public passcode:Ljava/lang/String;

.field public password:Ljava/lang/String;


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

    .line 24
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 25
    const-string v1, "name"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    const-string v1, "email"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    const-string v1, "password"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->companyId:Ljava/lang/String;

    const-string v2, "coLoginId"

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    iget-object v1, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 30
    const-string v1, "loginName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->loginName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    const-string v1, "passcode"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsRegisterParam;->passcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
