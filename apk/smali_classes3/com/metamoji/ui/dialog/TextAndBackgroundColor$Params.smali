.class public Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;
.super Ljava/lang/Object;
.source "TextAndBackgroundColor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextAndBackgroundColor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Params"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public _bgColorIsNoneChecked:Z

.field public _bgColorOpacity:I

.field public _bgColorRGB:Ljava/lang/Integer;

.field public _textColorToDefault:Z

.field public _textDefColor:I

.field public _textInkColors:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 79
    new-instance v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 4

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    .line 92
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textDefColor:I

    const/4 v0, 0x0

    .line 93
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/List;

    iput-object v3, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    .line 95
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    .line 96
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    .line 97
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/dialog/TextAndBackgroundColor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;-><init>(Landroid/os/Parcel;)V

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 71
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textColorToDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    iget p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textDefColor:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 73
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_textInkColors:Ljava/util/List;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 74
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorIsNoneChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 75
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorRGB:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 76
    iget p2, p0, Lcom/metamoji/ui/dialog/TextAndBackgroundColor$Params;->_bgColorOpacity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
