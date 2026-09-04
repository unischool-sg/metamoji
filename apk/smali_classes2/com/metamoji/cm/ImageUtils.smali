.class public Lcom/metamoji/cm/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;
    }
.end annotation


# static fields
.field public static final MIMETYPE_JPEG:Ljava/lang/String; = "image/jpeg"

.field public static final MIMETYPE_PNG:Ljava/lang/String; = "image/png"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createBitmapExFromBlob(Lcom/metamoji/cm/Blob;II)Lcom/metamoji/cm/BitmapEx;
    .locals 1

    .line 307
    new-instance v0, Lcom/metamoji/cm/Size;

    invoke-direct {v0}, Lcom/metamoji/cm/Size;-><init>()V

    .line 308
    invoke-static {p0, p1, p2, v0}, Lcom/metamoji/cm/ImageUtils;->createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 312
    :cond_0
    new-instance p1, Lcom/metamoji/cm/BitmapEx;

    invoke-direct {p1, p0, v0}, Lcom/metamoji/cm/BitmapEx;-><init>(Landroid/graphics/Bitmap;Lcom/metamoji/cm/Size;)V

    return-object p1
.end method

.method public static createBitmapFromBlob(Lcom/metamoji/cm/Blob;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;
    .locals 5

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p2, :cond_3

    if-nez p1, :cond_1

    goto :goto_0

    .line 178
    :cond_1
    :try_start_0
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 179
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 180
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v3

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v4

    array-length v4, v4

    invoke-static {v3, v1, v4, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p3, :cond_2

    .line 182
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v3, p3, Lcom/metamoji/cm/Size;->width:I

    .line 183
    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v3, p3, Lcom/metamoji/cm/Size;->height:I

    .line 185
    :cond_2
    iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 186
    iget p3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {p3, v3, p1, p2}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 187
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, v1, p0, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 171
    :cond_3
    :goto_0
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p1

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p1, v1, p0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_4

    .line 173
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/Size;->width:I

    .line 174
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    return-object p0

    :catch_0
    return-object v0
.end method

.method public static createBitmapFromFile(Ljava/lang/String;IILcom/metamoji/cm/Size;)Landroid/graphics/Bitmap;
    .locals 3

    if-eqz p2, :cond_5

    if-nez p1, :cond_0

    goto :goto_2

    .line 211
    :cond_0
    :try_start_0
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 212
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 213
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    if-eqz p3, :cond_1

    .line 215
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iput v1, p3, Lcom/metamoji/cm/Size;->width:I

    .line 216
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iput v1, p3, Lcom/metamoji/cm/Size;->height:I

    .line 219
    :cond_1
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    if-le p3, v1, :cond_2

    .line 220
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    .line 221
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    goto :goto_0

    .line 223
    :cond_2
    iget p3, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    .line 224
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    :goto_0
    const/high16 v2, 0x3f800000    # 1.0f

    if-le p3, p2, :cond_3

    int-to-float p3, p3

    int-to-float p2, p2

    div-float/2addr p3, p2

    goto :goto_1

    :cond_3
    move p3, v2

    :goto_1
    if-le v1, p1, :cond_4

    int-to-float p2, v1

    int-to-float p1, p1

    div-float v2, p2, p1

    :cond_4
    const/4 p1, 0x0

    .line 233
    iput-boolean p1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 234
    invoke-static {p3, v2}, Ljava/lang/Math;->max(FF)F

    move-result p1

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p1

    double-to-int p1, p1

    iput p1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 235
    sget-object p1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object p1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    .line 236
    invoke-static {p0, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 204
    :cond_5
    :goto_2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object p0

    if-eqz p3, :cond_6

    .line 206
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/Size;->width:I

    .line 207
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result p1

    iput p1, p3, Lcom/metamoji/cm/Size;->height:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_6
    return-object p0

    :catch_0
    const/4 p0, 0x0

    return-object p0
.end method

.method public static createBitmapFromFile2(Ljava/lang/String;II)Landroid/graphics/Bitmap;
    .locals 1

    .line 292
    new-instance v0, Lcom/metamoji/cm/ImageUtils$1;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/ImageUtils$1;-><init>(Ljava/lang/String;)V

    invoke-static {v0, p1, p2}, Lcom/metamoji/cm/ImageUtils;->decodeBitmap(Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static createBlobFromBitmap(Landroid/graphics/Bitmap;)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 76
    sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    invoke-static {p0, v0}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object p0

    return-object p0
.end method

.method public static createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;
    .locals 2

    .line 48
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x64

    .line 49
    invoke-virtual {p0, p1, v1, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 52
    :cond_0
    new-instance p0, Lcom/metamoji/cm/Blob;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;I)Lcom/metamoji/cm/Blob;
    .locals 1

    .line 63
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 64
    invoke-virtual {p0, p1, p2, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 66
    :cond_0
    new-instance p0, Lcom/metamoji/cm/Blob;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    invoke-static {p1}, Lcom/metamoji/cm/ImageUtils;->getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p2, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    return-object p0
.end method

.method public static createCroppedBitmapFromBlob(Lcom/metamoji/cm/Blob;Landroid/graphics/Rect;II)Landroid/graphics/Bitmap;
    .locals 6

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p3, :cond_2

    if-nez p2, :cond_1

    goto :goto_0

    .line 114
    :cond_1
    :try_start_0
    new-instance v3, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v3}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 116
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    invoke-static {v4, v5, p2, p3}, Lcom/metamoji/cm/ImageUtils;->getBitmapScale(IIII)F

    move-result p2

    float-to-double p2, p2

    invoke-static {p2, p3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p2

    double-to-int p2, p2

    iput p2, v3, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 117
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p2

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p2, v2, p0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    .line 118
    invoke-virtual {p0, p1, v3}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0

    .line 95
    :cond_2
    :goto_0
    new-instance p2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 96
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p3

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    array-length p0, p0

    invoke-static {p3, v2, p0, v1}, Landroid/graphics/BitmapRegionDecoder;->newInstance([BIIZ)Landroid/graphics/BitmapRegionDecoder;

    move-result-object p0

    .line 97
    invoke-virtual {p0, p1, p2}, Landroid/graphics/BitmapRegionDecoder;->decodeRegion(Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static createImageBlobFromStream(Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;
    .locals 1

    if-nez p2, :cond_0

    .line 414
    const-string v0, "image/png"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "image/jpeg"

    .line 415
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_0

    .line 420
    :cond_0
    invoke-static {p2}, Lcom/metamoji/cm/ImageUtils;->getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 426
    :cond_1
    :goto_0
    new-instance p2, Lcom/metamoji/cm/Blob;

    invoke-static {p0}, Lcom/metamoji/cm/CmUtils;->loadStreamInBuffer(Ljava/io/InputStream;)[B

    move-result-object p0

    invoke-direct {p2, p0, p1}, Lcom/metamoji/cm/Blob;-><init>([BLjava/lang/String;)V

    return-object p2

    .line 429
    :cond_2
    invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 430
    invoke-static {p0, p2}, Lcom/metamoji/cm/ImageUtils;->createBlobFromBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object p1

    .line 431
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V

    return-object p1
.end method

.method public static createImageBlobFromUri(Landroid/content/Context;Landroid/net/Uri;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;
    .locals 4

    const/4 v0, 0x0

    .line 379
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 380
    :try_start_1
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v3, 0x1

    .line 381
    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 382
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 383
    invoke-static {v1, v3, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 385
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 387
    :try_start_2
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v1
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 388
    :try_start_3
    iget-object p0, v2, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    invoke-static {v1, p0, p2}, Lcom/metamoji/cm/ImageUtils;->createImageBlobFromStream(Ljava/io/InputStream;Ljava/lang/String;Landroid/graphics/Bitmap$CompressFormat;)Lcom/metamoji/cm/Blob;

    move-result-object p0
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v1, :cond_0

    .line 395
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0

    return-object p0

    :catch_0
    move-exception p1

    .line 397
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    return-object p0

    :catch_1
    move-exception p0

    goto :goto_0

    :catchall_0
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    move-object v1, v0

    .line 390
    :goto_0
    :try_start_5
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-eqz v1, :cond_1

    .line 395
    :try_start_6
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 397
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    :goto_1
    return-object v0

    :catchall_1
    move-exception p0

    move-object v0, v1

    :goto_2
    if-eqz v0, :cond_2

    .line 395
    :try_start_7
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 397
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 400
    :cond_2
    :goto_3
    throw p0
.end method

.method private static decodeBitmap(Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;II)Landroid/graphics/Bitmap;
    .locals 10

    .line 248
    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v1, 0x1

    .line 249
    iput-boolean v1, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 250
    invoke-interface {p0, v0}, Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 251
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-nez v1, :cond_0

    goto :goto_1

    .line 255
    :cond_0
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    const/high16 v3, 0x3f800000    # 1.0f

    if-le v1, p1, :cond_1

    .line 256
    iget v1, v0, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v1, v1

    int-to-float v4, p1

    div-float/2addr v1, v4

    goto :goto_0

    :cond_1
    move v1, v3

    .line 258
    :goto_0
    iget v4, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    if-le v4, p2, :cond_2

    .line 259
    iget v3, v0, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float v3, v3

    int-to-float v4, p2

    div-float/2addr v3, v4

    :cond_2
    const/4 v4, 0x0

    .line 261
    iput-boolean v4, v0, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 262
    invoke-static {v1, v3}, Ljava/lang/Math;->max(FF)F

    move-result v1

    float-to-double v3, v1

    invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D

    move-result-wide v3

    double-to-int v1, v3

    iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 263
    invoke-interface {p0, v0}, Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;->decode(Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_3

    return-object v2

    .line 271
    :cond_3
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    .line 272
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    int-to-float p0, p1

    int-to-float p1, v6

    div-float/2addr p0, p1

    int-to-float p1, p2

    int-to-float p2, v7

    div-float/2addr p1, p2

    .line 275
    invoke-static {p0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p0

    .line 276
    new-instance v8, Landroid/graphics/Matrix;

    invoke-direct {v8}, Landroid/graphics/Matrix;-><init>()V

    .line 277
    invoke-virtual {v8, p0, p0}, Landroid/graphics/Matrix;->postScale(FF)Z

    const/4 v5, 0x0

    const/4 v9, 0x1

    const/4 v4, 0x0

    .line 278
    invoke-static/range {v3 .. v9}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 279
    invoke-virtual {v3, p0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    .line 280
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->recycle()V

    :cond_4
    return-object p0

    :cond_5
    :goto_1
    return-object v2
.end method

.method public static getBitmapScale(IIII)F
    .locals 2

    if-le p1, p0, :cond_0

    move v1, p1

    move p1, p0

    move p0, v1

    :cond_0
    const/high16 v0, 0x3f800000    # 1.0f

    if-le p0, p3, :cond_1

    int-to-float p0, p0

    int-to-float p3, p3

    div-float/2addr p0, p3

    goto :goto_0

    :cond_1
    move p0, v0

    :goto_0
    if-le p1, p2, :cond_2

    int-to-float p1, p1

    int-to-float p2, p2

    div-float v0, p1, p2

    .line 154
    :cond_2
    invoke-static {p0, v0}, Ljava/lang/Math;->max(FF)F

    move-result p0

    return p0
.end method

.method public static getBitmapSizeFromBlob(Lcom/metamoji/cm/Blob;)Lcom/metamoji/cm/Size;
    .locals 4

    const/4 v0, 0x0

    if-nez p0, :cond_0

    return-object v0

    .line 327
    :cond_0
    :try_start_0
    new-instance v1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v2, 0x1

    .line 328
    iput-boolean v2, v1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 329
    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object v2

    invoke-virtual {p0}, Lcom/metamoji/cm/Blob;->getData()[B

    move-result-object p0

    array-length p0, p0

    const/4 v3, 0x0

    invoke-static {v2, v3, p0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BIILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 330
    new-instance p0, Lcom/metamoji/cm/Size;

    iget v2, v1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    iget v1, v1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-direct {p0, v2, v1}, Lcom/metamoji/cm/Size;-><init>(II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    return-object v0
.end method

.method public static getBitmapSizeFromUri(Landroid/content/Context;Landroid/net/Uri;)Lcom/metamoji/cm/SizeF;
    .locals 1

    .line 355
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object p0

    .line 356
    new-instance p1, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {p1}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    const/4 v0, 0x1

    .line 357
    iput-boolean v0, p1, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 358
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 359
    invoke-static {p0, v0, p1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 360
    new-instance p0, Lcom/metamoji/cm/SizeF;

    iget v0, p1, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    int-to-float v0, v0

    iget p1, p1, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Lcom/metamoji/cm/SizeF;-><init>(FF)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    .line 362
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    const/4 p0, 0x0

    return-object p0
.end method

.method static getMimeType(Landroid/graphics/Bitmap$CompressFormat;)Ljava/lang/String;
    .locals 1

    .line 28
    sget-object v0, Lcom/metamoji/cm/ImageUtils$3;->$SwitchMap$android$graphics$Bitmap$CompressFormat:[I

    invoke-virtual {p0}, Landroid/graphics/Bitmap$CompressFormat;->ordinal()I

    move-result p0

    aget p0, v0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_2

    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x3

    if-eq p0, v0, :cond_0

    .line 36
    const-string p0, ""

    return-object p0

    .line 34
    :cond_0
    const-string p0, "image/webp"

    return-object p0

    .line 32
    :cond_1
    const-string p0, "image/jpeg"

    return-object p0

    .line 30
    :cond_2
    const-string p0, "image/png"

    return-object p0
.end method

.method public static loadAssetBitmap(I)Landroid/graphics/Bitmap;
    .locals 1

    .line 464
    invoke-static {}, Lcom/metamoji/cm/CmUtils;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 465
    invoke-static {v0, p0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static loadAssetBitmap(III)Landroid/graphics/Bitmap;
    .locals 1

    .line 469
    new-instance v0, Lcom/metamoji/cm/ImageUtils$2;

    invoke-direct {v0, p0}, Lcom/metamoji/cm/ImageUtils$2;-><init>(I)V

    invoke-static {v0, p1, p2}, Lcom/metamoji/cm/ImageUtils;->decodeBitmap(Lcom/metamoji/cm/ImageUtils$IBitmapDecoder;II)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static saveBitmapToImageFile(Landroid/graphics/Bitmap;Ljava/io/File;Landroid/graphics/Bitmap$CompressFormat;I)Z
    .locals 2

    const/4 v0, 0x0

    .line 447
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 448
    :try_start_1
    invoke-virtual {p0, p2, p3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result p0
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 455
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    return p0

    :catch_0
    move-exception p1

    .line 457
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    return p0

    :catchall_0
    move-exception p0

    move-object v0, v1

    goto :goto_2

    :catch_1
    move-exception p0

    move-object v0, v1

    goto :goto_0

    :catchall_1
    move-exception p0

    goto :goto_2

    :catch_2
    move-exception p0

    .line 450
    :goto_0
    :try_start_3
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v0, :cond_0

    .line 455
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    goto :goto_1

    :catch_3
    move-exception p0

    .line 457
    invoke-static {p0}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_0
    :goto_1
    const/4 p0, 0x0

    return p0

    :goto_2
    if-eqz v0, :cond_1

    .line 455
    :try_start_5
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto :goto_3

    :catch_4
    move-exception p1

    .line 457
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    .line 460
    :cond_1
    :goto_3
    throw p0
.end method
