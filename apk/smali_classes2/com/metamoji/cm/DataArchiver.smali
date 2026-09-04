.class public Lcom/metamoji/cm/DataArchiver;
.super Ljava/lang/Object;
.source "DataArchiver.java"


# static fields
.field private static final MMJEDDATAARCHIVE_STRENCODING_NULL:S = 0x0s

.field private static final MMJEDDATAARCHIVE_STRENCODING_UTF8:S = 0x1s


# instance fields
.field private data:Ljava/io/ByteArrayOutputStream;

.field private dataAvoidStack:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/io/ByteArrayOutputStream;",
            ">;"
        }
    .end annotation
.end field

.field private readonlyData:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    .line 26
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->dataAvoidStack:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 27
    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public constructor <init>([BII)V
    .locals 1

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 38
    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    .line 39
    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->dataAvoidStack:Ljava/util/ArrayList;

    .line 40
    invoke-static {p1, p2, p3}, Ljava/nio/ByteBuffer;->wrap([BII)Ljava/nio/ByteBuffer;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    return-void
.end method

.method private readStringUTF8()Ljava/lang/String;
    .locals 5

    .line 426
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->readInt32()I

    move-result v0

    add-int/lit8 v1, v0, 0x1

    and-int/lit8 v1, v1, -0x2

    .line 429
    new-array v2, v1, [B

    .line 430
    iget-object v3, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 433
    :try_start_0
    new-instance v1, Ljava/lang/String;

    const-string v3, "UTF-8"

    invoke-direct {v1, v2, v4, v0, v3}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 436
    :catch_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "throws UnsupportedEncodingException in DataArchiver.readStringUTF8."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeStringWithUTF8(Ljava/lang/String;)I
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 290
    invoke-virtual {p0, v0}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result p1

    return p1

    .line 294
    :cond_0
    :try_start_0
    const-string v1, "UTF-8"

    invoke-virtual {p1, v1}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p1
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 300
    array-length v1, p1

    add-int/lit8 v2, v1, 0x1

    and-int/lit8 v2, v2, -0x2

    const/4 v3, 0x1

    .line 304
    invoke-virtual {p0, v3}, Lcom/metamoji/cm/DataArchiver;->writeInt16(S)I

    move-result v3

    .line 305
    invoke-virtual {p0, v1}, Lcom/metamoji/cm/DataArchiver;->writeInt32(I)I

    move-result v4

    add-int/2addr v3, v4

    .line 306
    iget-object v4, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v4, p1, v0, v1}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    if-le v2, v1, :cond_1

    .line 308
    iget-object p1, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->write(I)V

    :cond_1
    add-int/2addr v3, v2

    return v3

    .line 297
    :catch_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "throws UnsupportedEncodingException in DataArchiver.writeStringWIthUTF8."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public appendData(Ljava/io/ByteArrayOutputStream;)I
    .locals 2

    .line 112
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 114
    :try_start_0
    invoke-virtual {p1, v0}, Ljava/io/ByteArrayOutputStream;->writeTo(Ljava/io/OutputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :catch_0
    invoke-virtual {p1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    return v1
.end method

.method public appendData([B)I
    .locals 3

    .line 130
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_1

    .line 131
    array-length v2, p1

    invoke-virtual {v0, p1, v1, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    .line 133
    array-length p1, p1

    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_0

    .line 135
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write(I)V

    add-int/lit8 p1, p1, 0x1

    :cond_0
    return p1

    :cond_1
    return v1
.end method

.method public getLength()I
    .locals 1

    .line 65
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v0

    return v0
.end method

.method public getReadPointer()I
    .locals 1

    .line 452
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public getWrittenData()Ljava/io/ByteArrayOutputStream;
    .locals 1

    .line 58
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    return-object v0
.end method

.method public isStoring()Z
    .locals 1

    .line 51
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public readData(I)[B
    .locals 3

    .line 148
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_1

    .line 152
    new-array v1, p1, [B

    const/4 v2, 0x0

    .line 154
    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    .line 157
    iget-object p1, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->get()B

    :cond_0
    return-object v1

    .line 149
    :cond_1
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public readFloat32()F
    .locals 4

    .line 358
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 363
    new-array v1, v0, [B

    .line 364
    iget-object v2, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 368
    invoke-static {v1, v3}, Lcom/metamoji/cm/BytesUtils;->readFloat32LE([BI)F

    move-result v0

    return v0

    .line 359
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readFloat64()D
    .locals 4

    .line 377
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-nez v0, :cond_0

    const/16 v0, 0x8

    .line 382
    new-array v1, v0, [B

    .line 383
    iget-object v2, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 387
    invoke-static {v1, v3}, Lcom/metamoji/cm/BytesUtils;->readFloat64LE([BI)D

    move-result-wide v0

    return-wide v0

    .line 378
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt16()S
    .locals 4

    .line 320
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x2

    .line 325
    new-array v1, v0, [B

    .line 326
    iget-object v2, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 330
    invoke-static {v1, v3}, Lcom/metamoji/cm/BytesUtils;->readSInt16LE([BI)S

    move-result v0

    return v0

    .line 321
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readInt32()I
    .locals 4

    .line 339
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x4

    .line 344
    new-array v1, v0, [B

    .line 345
    iget-object v2, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-virtual {v2, v1, v3, v0}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 349
    invoke-static {v1, v3}, Lcom/metamoji/cm/BytesUtils;->readSInt32LE([BI)I

    move-result v0

    return v0

    .line 340
    :cond_0
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readString()Ljava/lang/String;
    .locals 3

    .line 397
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-nez v0, :cond_2

    .line 401
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->readInt16()S

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    return-object v1

    .line 408
    :cond_0
    invoke-direct {p0}, Lcom/metamoji/cm/DataArchiver;->readStringUTF8()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    return-object v1

    .line 398
    :cond_2
    new-instance v0, Lcom/metamoji/cm/CmException;

    const-string v1, "MMJEdDataArchiverWriteError: can\'t read from writeonly data."

    invoke-direct {v0, v1}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setReadPointer(I)V
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->readonlyData:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public switchDataBackToMain()Ljava/io/ByteArrayOutputStream;
    .locals 3

    .line 95
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    .line 96
    iget-object v1, p0, Lcom/metamoji/cm/DataArchiver;->dataAvoidStack:Ljava/util/ArrayList;

    invoke-static {v1}, Lcom/metamoji/cm/ListUtils;->getLast(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/io/ByteArrayOutputStream;

    iput-object v1, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/metamoji/cm/DataArchiver;->dataAvoidStack:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_0
    return-object v0
.end method

.method public switchDataToTemporary()Z
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->dataAvoidStack:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    const/4 v0, 0x1

    return v0
.end method

.method public writeFloat32(F)I
    .locals 1

    .line 239
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p1}, Lcom/metamoji/cm/BytesUtils;->writeFloat32LE(Ljava/io/ByteArrayOutputStream;F)V

    const/4 p1, 0x4

    return p1

    .line 240
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MMJEdDataArchiverWriteError: can\'t write to readonly data."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeFloat64(D)I
    .locals 1

    .line 256
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p1, p2}, Lcom/metamoji/cm/BytesUtils;->writeFloat64LE(Ljava/io/ByteArrayOutputStream;D)V

    const/16 p1, 0x8

    return p1

    .line 257
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string p2, "MMJEdDataArchiverWriteError: can\'t write to readonly data."

    invoke-direct {p1, p2}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt16(S)I
    .locals 1

    .line 205
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 210
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p1}, Lcom/metamoji/cm/BytesUtils;->writeSInt16LE(Ljava/io/ByteArrayOutputStream;S)V

    const/4 p1, 0x2

    return p1

    .line 206
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MMJEdDataArchiverWriteError: can\'t write to readonly data."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeInt32(I)I
    .locals 1

    .line 222
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/metamoji/cm/DataArchiver;->data:Ljava/io/ByteArrayOutputStream;

    invoke-static {v0, p1}, Lcom/metamoji/cm/BytesUtils;->writeSInt32LE(Ljava/io/ByteArrayOutputStream;I)V

    const/4 p1, 0x4

    return p1

    .line 223
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MMJEdDataArchiverWriteError: can\'t write to readonly data."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public writeString(Ljava/lang/String;)I
    .locals 1

    .line 273
    invoke-virtual {p0}, Lcom/metamoji/cm/DataArchiver;->isStoring()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 276
    invoke-direct {p0, p1}, Lcom/metamoji/cm/DataArchiver;->writeStringWithUTF8(Ljava/lang/String;)I

    move-result p1

    return p1

    .line 274
    :cond_0
    new-instance p1, Lcom/metamoji/cm/CmException;

    const-string v0, "MMJEdDataArchiverWriteError: can\'t write to readonly data."

    invoke-direct {p1, v0}, Lcom/metamoji/cm/CmException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
