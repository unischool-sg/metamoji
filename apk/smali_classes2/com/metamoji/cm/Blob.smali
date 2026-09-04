.class public Lcom/metamoji/cm/Blob;
.super Ljava/lang/Object;
.source "Blob.java"


# instance fields
.field private data:[B

.field private mimeType:Ljava/lang/String;


# direct methods
.method public constructor <init>([BLjava/lang/String;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/metamoji/cm/Blob;->data:[B

    .line 16
    iput-object p2, p0, Lcom/metamoji/cm/Blob;->mimeType:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getData()[B
    .locals 1

    .line 37
    iget-object v0, p0, Lcom/metamoji/cm/Blob;->data:[B

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    .line 23
    iget-object v0, p0, Lcom/metamoji/cm/Blob;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public setData([B)V
    .locals 0

    .line 44
    iput-object p1, p0, Lcom/metamoji/cm/Blob;->data:[B

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    .line 30
    iput-object p1, p0, Lcom/metamoji/cm/Blob;->mimeType:Ljava/lang/String;

    return-void
.end method
