.class public Lcom/metamoji/ui/UiPaperSettingsParam;
.super Ljava/lang/Object;
.source "UiPaperSettingsParam.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/UiPaperSettingsParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bgImage:Landroid/graphics/Bitmap;

.field public bgImageFormat:Landroid/graphics/Bitmap$CompressFormat;

.field public bgImageJpeg:Z

.field public bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

.field public bgImageOpacity:F

.field public bgImagePresetNo:I

.field public bgImageResHigh:Z

.field public bgImageUri:Ljava/lang/String;

.field public bgImageUsed:Z

.field public paperSize:Lcom/metamoji/cm/SizeF;

.field public printSize:Lcom/metamoji/cm/SizeF;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 103
    new-instance v0, Lcom/metamoji/ui/UiPaperSettingsParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/UiPaperSettingsParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/UiPaperSettingsParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    .line 28
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x1

    .line 29
    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 30
    sget-object v0, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const/4 v0, 0x0

    .line 31
    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 32
    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    const/4 v0, -0x1

    .line 33
    iput v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 34
    iput v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    .line 38
    new-instance v0, Lcom/metamoji/cm/SizeF;

    invoke-direct {v0}, Lcom/metamoji/cm/SizeF;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    const/4 v0, 0x1

    .line 39
    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 40
    sget-object v1, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->CENTER:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    iput-object v1, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const/4 v1, 0x0

    .line 41
    iput-boolean v1, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 42
    iput-boolean v1, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    const/high16 v2, 0x3f800000    # 1.0f

    .line 43
    iput v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    .line 45
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-lez v2, :cond_0

    .line 47
    new-array v3, v2, [B

    .line 48
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->readByteArray([B)V

    .line 49
    invoke-static {v3, v1, v2}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    goto :goto_0

    .line 51
    :cond_0
    new-array v2, v0, [B

    .line 52
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readByteArray([B)V

    .line 54
    :goto_0
    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    .line 55
    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    .line 56
    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/SizeF;->width:F

    .line 57
    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v3

    iput v3, v2, Lcom/metamoji/cm/SizeF;->height:F

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    invoke-static {v2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->valueOf(I)Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    move-result-object v2

    iput-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    const/4 v2, 0x3

    .line 59
    new-array v2, v2, [Z

    .line 60
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 61
    aget-boolean v1, v2, v1

    iput-boolean v1, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 62
    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    const/4 v0, 0x2

    .line 63
    aget-boolean v0, v2, v0

    iput-boolean v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    .line 64
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    .line 65
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    .line 66
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

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

    .line 71
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    .line 72
    new-instance p2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {p2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 73
    iget-object v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImage:Landroid/graphics/Bitmap;

    sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v4, 0x64

    invoke-virtual {v2, v3, v4, p2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 74
    invoke-virtual {p2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p2

    .line 75
    array-length v2, p2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 76
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    goto :goto_0

    .line 78
    :cond_0
    new-array p2, v1, [B

    .line 79
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 80
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 83
    :goto_0
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 84
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->paperSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 85
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->width:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 86
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->printSize:Lcom/metamoji/cm/SizeF;

    iget p2, p2, Lcom/metamoji/cm/SizeF;->height:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 87
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageLayout:Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;

    invoke-virtual {p2}, Lcom/metamoji/un/bgimage/UnBGImageUnit$Style;->intValue()I

    move-result p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 89
    iget-boolean p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUsed:Z

    .line 90
    iget-boolean v2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageJpeg:Z

    .line 91
    iget-boolean v3, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageResHigh:Z

    const/4 v4, 0x3

    new-array v4, v4, [Z

    aput-boolean p2, v4, v0

    aput-boolean v2, v4, v1

    const/4 p2, 0x2

    aput-boolean v3, v4, p2

    .line 92
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 93
    iget p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImagePresetNo:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget-object p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageUri:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 95
    iget p2, p0, Lcom/metamoji/ui/UiPaperSettingsParam;->bgImageOpacity:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
