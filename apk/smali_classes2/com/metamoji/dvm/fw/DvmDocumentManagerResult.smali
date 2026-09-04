.class public Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;
.super Ljava/lang/Object;
.source "DvmDocumentManagerResult.java"


# instance fields
.field private _err:Lcom/metamoji/sd/SdError;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 15
    iput-object v0, p0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->_err:Lcom/metamoji/sd/SdError;

    return-void
.end method


# virtual methods
.method public GetErrorInfo()Lcom/metamoji/sd/SdError;
    .locals 1

    .line 9
    iget-object v0, p0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->_err:Lcom/metamoji/sd/SdError;

    return-object v0
.end method

.method public initWithDictionary(Ljava/util/Map;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    return-object p0
.end method

.method public initWithErrorInfo(Lcom/metamoji/sd/SdError;)Ljava/lang/Object;
    .locals 0

    .line 23
    iput-object p1, p0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->_err:Lcom/metamoji/sd/SdError;

    return-object p0
.end method

.method public succeeded()Z
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/metamoji/dvm/fw/DvmDocumentManagerResult;->_err:Lcom/metamoji/sd/SdError;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
