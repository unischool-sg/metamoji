.class public Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;
.super Ljava/lang/Object;
.source "DocumentSettings2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/DocumentSettings2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DocSetParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public coverpage:Z

.field public coverprint:Z

.field public footer:Ljava/lang/String;

.field public header:Ljava/lang/String;

.field public isIncludeVoiceFile:Z

.field public thumbImg:Landroid/graphics/Bitmap;

.field public thumbUri:Ljava/lang/String;

.field public thumbUsed:Z

.field public titleRule:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 161
    new-instance v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 106
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x4

    .line 108
    new-array v0, v0, [Z

    .line 109
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 111
    aget-boolean v2, v0, v1

    iput-boolean v2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    const/4 v2, 0x1

    .line 112
    aget-boolean v3, v0, v2

    iput-boolean v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    const/4 v3, 0x2

    .line 113
    aget-boolean v3, v0, v3

    iput-boolean v3, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    const/4 v3, 0x3

    .line 114
    aget-boolean v0, v0, v3

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->isIncludeVoiceFile:Z

    .line 116
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    .line 117
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->footer:Ljava/lang/String;

    .line 118
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUri:Ljava/lang/String;

    .line 119
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    .line 121
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_0

    .line 123
    new-array v2, v0, [B

    .line 124
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 125
    invoke-static {v2, v1, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    return-void

    .line 127
    :cond_0
    new-array v0, v2, [B

    .line 128
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readByteArray([B)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    const/4 p2, 0x4

    .line 135
    new-array p2, p2, [Z

    .line 137
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUsed:Z

    const/4 v1, 0x0

    aput-boolean v0, p2, v1

    .line 138
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverpage:Z

    const/4 v2, 0x1

    aput-boolean v0, p2, v2

    .line 139
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->coverprint:Z

    const/4 v3, 0x2

    aput-boolean v0, p2, v3

    .line 140
    iget-boolean v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->isIncludeVoiceFile:Z

    const/4 v3, 0x3

    aput-boolean v0, p2, v3

    .line 141
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 143
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->header:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 144
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->footer:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 145
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 146
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->titleRule:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 148
    iget-object p2, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    if-eqz p2, :cond_0

    .line 149
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 150
    iget-object v0, p0, Lcom/metamoji/ui/dialog/DocumentSettings2$DocSetParam;->thumbImg:Landroid/graphics/Bitmap;

    sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 151
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 152
    array-length v0, p2

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 153
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void

    .line 155
    :cond_0
    new-array p2, v2, [B

    .line 156
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    return-void
.end method
