.class public Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;
.super Lcom/metamoji/cs/dc/params/CsRegisterParam;
.source "CsUpdateUserInfoParam.java"


# instance fields
.field public updateLocale:Ljava/lang/String;

.field public updateTimezone:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 5
    invoke-direct {p0}, Lcom/metamoji/cs/dc/params/CsRegisterParam;-><init>()V

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

    .line 12
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 13
    const-string v1, "name"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    const-string v1, "email"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    const-string v1, "chkpass"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->password:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    const-string v1, "updateLocale"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->updateLocale:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    const-string v1, "updateTimezone"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->updateTimezone:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    const-string v1, "companyId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->companyId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 19
    const-string v1, "coLoginId"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->coLoginId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 20
    const-string v1, "loginName"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->loginName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    const-string v1, "passcode"

    iget-object v2, p0, Lcom/metamoji/cs/dc/params/CsUpdateUserInfoParam;->passcode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method
