.class Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;
.super Ljava/lang/Object;
.source "UiButton.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiButtonParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public isEnabled:Z

.field public isSelected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 835
    new-instance v0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable$1;

    invoke-direct {v0}, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 849
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    .line 850
    new-array v0, v0, [I

    .line 851
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readIntArray([I)V

    const/4 p1, 0x0

    .line 852
    aget v1, v0, p1

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    move v1, v2

    goto :goto_0

    :cond_0
    move v1, p1

    :goto_0
    iput-boolean v1, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isSelected:Z

    .line 853
    aget v0, v0, v2

    if-eqz v0, :cond_1

    move p1, v2

    :cond_1
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isEnabled:Z

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/common/UiButton-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(ZZ)V
    .locals 0

    .line 856
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 857
    iput-boolean p1, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isSelected:Z

    .line 858
    iput-boolean p2, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isEnabled:Z

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 831
    iget-boolean p2, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isSelected:Z

    iget-boolean v0, p0, Lcom/metamoji/ui/common/UiButton$UiButtonParcelable;->isEnabled:Z

    filled-new-array {p2, v0}, [I

    move-result-object p2

    .line 832
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    return-void
.end method
