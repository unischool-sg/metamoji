.class public Lcom/metamoji/sd/SdError;
.super Ljava/lang/Object;
.source "SdError.java"


# instance fields
.field private m_errCode:Lcom/metamoji/dvm/DvmErrCode;

.field private m_userInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/metamoji/dvm/DvmErrCode;)V
    .locals 1

    const/4 v0, 0x0

    .line 13
    invoke-direct {p0, p1, v0}, Lcom/metamoji/sd/SdError;-><init>(Lcom/metamoji/dvm/DvmErrCode;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/dvm/DvmErrCode;Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/metamoji/dvm/DvmErrCode;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iput-object p1, p0, Lcom/metamoji/sd/SdError;->m_errCode:Lcom/metamoji/dvm/DvmErrCode;

    .line 21
    iput-object p2, p0, Lcom/metamoji/sd/SdError;->m_userInfo:Ljava/util/Map;

    return-void
.end method


# virtual methods
.method public getErrCode()Lcom/metamoji/dvm/DvmErrCode;
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/sd/SdError;->m_errCode:Lcom/metamoji/dvm/DvmErrCode;

    return-object v0
.end method

.method public getUserInfo()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 29
    iget-object v0, p0, Lcom/metamoji/sd/SdError;->m_userInfo:Ljava/util/Map;

    return-object v0
.end method

.method public setErrCode(Lcom/metamoji/dvm/DvmErrCode;)V
    .locals 0

    .line 26
    iput-object p1, p0, Lcom/metamoji/sd/SdError;->m_errCode:Lcom/metamoji/dvm/DvmErrCode;

    return-void
.end method

.method public setUserInfo(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 30
    iput-object p1, p0, Lcom/metamoji/sd/SdError;->m_userInfo:Ljava/util/Map;

    return-void
.end method
