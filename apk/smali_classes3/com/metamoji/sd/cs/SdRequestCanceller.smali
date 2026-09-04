.class public Lcom/metamoji/sd/cs/SdRequestCanceller;
.super Ljava/lang/Object;
.source "SdRequestCanceller.java"


# instance fields
.field private m_cancel:Z

.field private m_client:Lcom/metamoji/sd/cs/SdHttpClient;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public cancel()V
    .locals 1

    .line 26
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_cancel:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 27
    iput-boolean v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_cancel:Z

    .line 28
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_client:Lcom/metamoji/sd/cs/SdHttpClient;

    if-eqz v0, :cond_0

    .line 30
    invoke-virtual {v0}, Lcom/metamoji/sd/cs/SdHttpClient;->cancel()V

    :cond_0
    return-void
.end method

.method public getHttpClient()Lcom/metamoji/sd/cs/SdHttpClient;
    .locals 1

    .line 10
    iget-object v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_client:Lcom/metamoji/sd/cs/SdHttpClient;

    return-object v0
.end method

.method public isCancel()Z
    .locals 1

    .line 22
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_cancel:Z

    return v0
.end method

.method public setHttpClient(Lcom/metamoji/sd/cs/SdHttpClient;)V
    .locals 1

    .line 13
    iput-object p1, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_client:Lcom/metamoji/sd/cs/SdHttpClient;

    .line 14
    iget-boolean v0, p0, Lcom/metamoji/sd/cs/SdRequestCanceller;->m_cancel:Z

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 16
    invoke-virtual {p1}, Lcom/metamoji/sd/cs/SdHttpClient;->cancel()V

    :cond_0
    return-void
.end method
