.class public Lcom/metamoji/cm/EdgeInsets;
.super Ljava/lang/Object;
.source "EdgeInsets.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/cm/EdgeInsets;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lcom/metamoji/cm/EdgeInsets$1;

    invoke-direct {v0}, Lcom/metamoji/cm/EdgeInsets$1;-><init>()V

    sput-object v0, Lcom/metamoji/cm/EdgeInsets;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(FFFF)V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    iput p1, p0, Lcom/metamoji/cm/EdgeInsets;->top:F

    .line 14
    iput p2, p0, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 15
    iput p3, p0, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    .line 16
    iput p4, p0, Lcom/metamoji/cm/EdgeInsets;->right:F

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->top:F

    .line 52
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 53
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result v0

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    .line 54
    invoke-virtual {p1}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    iput p1, p0, Lcom/metamoji/cm/EdgeInsets;->right:F

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/cm/EdgeInsets-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/cm/EdgeInsets;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Lcom/metamoji/cm/EdgeInsets;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    iget v0, p1, Lcom/metamoji/cm/EdgeInsets;->top:F

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->top:F

    .line 21
    iget v0, p1, Lcom/metamoji/cm/EdgeInsets;->left:F

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->left:F

    .line 22
    iget v0, p1, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    iput v0, p0, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    .line 23
    iget p1, p1, Lcom/metamoji/cm/EdgeInsets;->right:F

    iput p1, p0, Lcom/metamoji/cm/EdgeInsets;->right:F

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

    .line 34
    iget p2, p0, Lcom/metamoji/cm/EdgeInsets;->top:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 35
    iget p2, p0, Lcom/metamoji/cm/EdgeInsets;->left:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 36
    iget p2, p0, Lcom/metamoji/cm/EdgeInsets;->bottom:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 37
    iget p2, p0, Lcom/metamoji/cm/EdgeInsets;->right:F

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeFloat(F)V

    return-void
.end method
