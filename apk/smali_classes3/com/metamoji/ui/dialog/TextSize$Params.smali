.class public Lcom/metamoji/ui/dialog/TextSize$Params;
.super Ljava/lang/Object;
.source "TextSize.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TextSize;
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
            "Lcom/metamoji/ui/dialog/TextSize$Params;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defFontSize:F

.field public textSize:F

.field public toDefault:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 42
    new-instance v0, Lcom/metamoji/ui/dialog/TextSize$Params$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TextSize$Params$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/TextSize$Params;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    .line 55
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/dialog/TextSize-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/dialog/TextSize$Params;-><init>(Landroid/os/Parcel;)V

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

    .line 37
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->toDefault:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 38
    iget p2, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->textSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 39
    iget p2, p0, Lcom/metamoji/ui/dialog/TextSize$Params;->defFontSize:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
