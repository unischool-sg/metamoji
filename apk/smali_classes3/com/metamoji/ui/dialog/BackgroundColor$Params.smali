.class public Lcom/metamoji/ui/dialog/BackgroundColor$Params;
.super Ljava/lang/Object;
.source "BackgroundColor.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/BackgroundColor;
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
            "Lcom/metamoji/ui/dialog/BackgroundColor$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public colorRGB:Ljava/lang/Integer;

.field public isNoneChecked:Z

.field public opacity:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 47
    new-instance v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/BackgroundColor$Params$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 58
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    const/4 v0, 0x0

    .line 59
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readValue(Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iput-object v0, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    .line 60
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/dialog/BackgroundColor-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/BackgroundColor$Params;-><init>(Landroid/os/Parcel;)V

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

    .line 42
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->isNoneChecked:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 43
    iget-object p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->colorRGB:Ljava/lang/Integer;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeValue(Ljava/lang/Object;)V

    .line 44
    iget p2, p0, Lcom/metamoji/ui/dialog/BackgroundColor$Params;->opacity:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
