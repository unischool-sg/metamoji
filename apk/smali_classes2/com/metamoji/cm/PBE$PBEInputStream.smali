.class public Lcom/metamoji/cm/PBE$PBEInputStream;
.super Ljava/io/FilterInputStream;
.source "PBE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/cm/PBE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PBEInputStream"
.end annotation


# instance fields
.field private isFinal:Z

.field private outbuf:[B

.field private outlen:I

.field private pos:I

.field private prov:Ljavax/crypto/Cipher;

.field final synthetic this$0:Lcom/metamoji/cm/PBE;


# direct methods
.method public constructor <init>(Lcom/metamoji/cm/PBE;Ljava/io/InputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 317
    iput-object p1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->this$0:Lcom/metamoji/cm/PBE;

    .line 318
    invoke-direct {p0, p2}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    const/4 p2, 0x0

    .line 319
    invoke-static {p1, p2}, Lcom/metamoji/cm/PBE;->-$$Nest$minitEngine(Lcom/metamoji/cm/PBE;Z)Ljavax/crypto/Cipher;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->prov:Ljavax/crypto/Cipher;

    .line 320
    iput-boolean p2, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->isFinal:Z

    return-void
.end method

.method private readToOutbuf()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/crypto/ShortBufferException;,
            Ljavax/crypto/BadPaddingException;,
            Ljavax/crypto/IllegalBlockSizeException;
        }
    .end annotation

    .line 334
    iget-boolean v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->isFinal:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    :cond_0
    const/16 v0, 0x1000

    .line 337
    new-array v2, v0, [B

    .line 338
    new-instance v3, Lcom/metamoji/cm/PBE$ExpandableBuffer;

    iget-object v4, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->this$0:Lcom/metamoji/cm/PBE;

    invoke-direct {v3, v4, v0}, Lcom/metamoji/cm/PBE$ExpandableBuffer;-><init>(Lcom/metamoji/cm/PBE;I)V

    .line 341
    iget-object v4, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v4, v2}, Ljava/io/InputStream;->read([B)I

    move-result v4

    .line 346
    iget-object v5, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->prov:Ljavax/crypto/Cipher;

    const/4 v6, 0x1

    const/4 v7, -0x1

    if-eq v4, v7, :cond_1

    .line 342
    invoke-virtual {v5, v0}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/metamoji/cm/PBE$ExpandableBuffer;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outbuf:[B

    .line 343
    iget-object v3, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->prov:Ljavax/crypto/Cipher;

    invoke-virtual {v3, v2, v1, v4, v0}, Ljavax/crypto/Cipher;->update([BII[B)I

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outlen:I

    goto :goto_0

    .line 346
    :cond_1
    invoke-virtual {v5, v1}, Ljavax/crypto/Cipher;->getOutputSize(I)I

    move-result v0

    invoke-virtual {v3, v0}, Lcom/metamoji/cm/PBE$ExpandableBuffer;->getBuffer(I)[B

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outbuf:[B

    .line 347
    iget-object v2, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->prov:Ljavax/crypto/Cipher;

    invoke-virtual {v2, v0, v1}, Ljavax/crypto/Cipher;->doFinal([BI)I

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outlen:I

    .line 348
    iput-boolean v6, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->isFinal:Z

    :goto_0
    return v6
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 330
    iget v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outlen:I

    iget v1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public markSupported()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    invoke-virtual {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->available()I

    move-result v0

    if-nez v0, :cond_1

    .line 357
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->readToOutbuf()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    .line 363
    iput v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    goto :goto_0

    :catch_0
    move-exception v0

    .line 360
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 361
    new-instance v1, Ljava/io/IOException;

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 365
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outbuf:[B

    iget v1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    aget-byte v0, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 366
    iput v1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    return v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    .line 372
    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lcom/metamoji/cm/PBE$PBEInputStream;->read([BII)I

    move-result p1

    return p1
.end method

.method public read([BII)I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    if-lez p3, :cond_3

    .line 379
    invoke-virtual {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->available()I

    move-result v2

    if-gt p3, v2, :cond_0

    .line 381
    iget-object v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outbuf:[B

    iget v2, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    invoke-static {v0, v2, p1, p2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 382
    iget p1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    add-int/2addr p1, p3

    iput p1, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    add-int/2addr v1, p3

    return v1

    :cond_0
    if-nez v2, :cond_2

    .line 388
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->readToOutbuf()Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_1

    if-nez v1, :cond_3

    const/4 p1, -0x1

    return p1

    .line 394
    :cond_1
    iput v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 391
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 392
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 396
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->outbuf:[B

    iget v4, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    invoke-static {v3, v4, p1, p2, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 397
    iget v3, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    add-int/2addr v3, v2

    iput v3, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    sub-int/2addr p3, v2

    add-int/2addr p2, v2

    add-int/2addr v1, v2

    goto :goto_0

    :cond_3
    return v1
.end method

.method public skip(J)J
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    move-wide v2, v0

    :goto_0
    cmp-long v4, p1, v0

    if-lez v4, :cond_3

    .line 409
    invoke-virtual {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->available()I

    move-result v4

    int-to-long v5, v4

    cmp-long v7, p1, v5

    if-gtz v7, :cond_0

    .line 411
    iget v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    add-long/2addr v2, p1

    return-wide v2

    :cond_0
    if-nez v4, :cond_2

    .line 417
    :try_start_0
    invoke-direct {p0}, Lcom/metamoji/cm/PBE$PBEInputStream;->readToOutbuf()Z

    move-result v7
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v7, :cond_1

    goto :goto_2

    :cond_1
    const/4 v7, 0x0

    .line 423
    iput v7, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    goto :goto_1

    :catch_0
    move-exception p1

    .line 420
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    .line 421
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw p2

    .line 425
    :cond_2
    :goto_1
    iget v7, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    add-int/2addr v7, v4

    iput v7, p0, Lcom/metamoji/cm/PBE$PBEInputStream;->pos:I

    sub-long/2addr p1, v5

    add-long/2addr v2, v5

    goto :goto_0

    :cond_3
    :goto_2
    return-wide v2
.end method
