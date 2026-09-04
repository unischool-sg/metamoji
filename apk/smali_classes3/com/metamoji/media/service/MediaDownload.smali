.class Lcom/metamoji/media/service/MediaDownload;
.super Lcom/metamoji/media/service/MediaURLConnection;
.source "MediaDownload.java"


# instance fields
.field private _url:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/metamoji/media/service/MediaBgTask;)V
    .locals 0

    .line 16
    invoke-direct {p0, p1}, Lcom/metamoji/media/service/MediaURLConnection;-><init>(Lcom/metamoji/media/service/MediaBgTask;)V

    return-void
.end method


# virtual methods
.method public getUrl()Ljava/lang/String;
    .locals 1

    .line 12
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDownload;->_url:Ljava/lang/String;

    return-object v0
.end method

.method public sendRequest()Z
    .locals 1

    .line 25
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDownload;->_url:Ljava/lang/String;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 28
    :cond_0
    iget-object v0, p0, Lcom/metamoji/media/service/MediaDownload;->_url:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/metamoji/media/service/MediaDownload;->getRequest(Ljava/lang/String;)Z

    move-result v0

    return v0

    :cond_1
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Lcom/metamoji/media/service/MediaDownload;->_url:Ljava/lang/String;

    return-void
.end method
