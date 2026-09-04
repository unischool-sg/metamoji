.class public Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;
.super Ljava/lang/Object;
.source "DocumentThumbnail.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/DocumentThumbnail;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ThumbnailSettingsParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bgImage:Landroid/graphics/Bitmap;

.field public bgImageUri:Ljava/lang/String;

.field public bgImageUsed:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 265
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 220
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 221
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 224
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 225
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 226
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    const/4 v2, 0x1

    if-lez v1, :cond_0

    .line 228
    new-array v3, v1, [B

    .line 229
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 230
    invoke-static {v3, v0, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 232
    :cond_0
    new-array v1, v2, [B

    .line 233
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readByteArray([B)V

    .line 235
    :goto_0
    new-array v1, v2, [Z

    .line 236
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 237
    aget-boolean v0, v1, v0

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    .line 238
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUri:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 243
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 244
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 245
    iget-object v2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 246
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 247
    array-length v2, p2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 248
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 250
    :cond_0
    new-array p2, v1, [B

    .line 251
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 252
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 255
    :goto_0
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUsed:Z

    new-array v1, v1, [Z

    aput-boolean p2, v1, v0

    .line 256
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 257
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentThumbnail$ThumbnailSettingsParam;->bgImageUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
