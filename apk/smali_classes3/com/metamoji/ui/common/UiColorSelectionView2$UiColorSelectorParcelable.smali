.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "UiColorSelectorParcelable"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public selectGroup:Ljava/lang/String;

.field public selectIndex:I

.field public selectSet:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 2704
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable$1;

    invoke-direct {v0}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 2718
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2719
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectGroup:Ljava/lang/String;

    .line 2720
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectSet:Ljava/lang/String;

    .line 2721
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectIndex:I

    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lcom/metamoji/ui/common/UiColorSelectionView2-IA;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 2724
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2725
    iput-object p1, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectGroup:Ljava/lang/String;

    .line 2726
    iput p3, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectIndex:I

    .line 2727
    iput-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectSet:Ljava/lang/String;

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

    .line 2699
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectGroup:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2700
    iget-object p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectSet:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2701
    iget p2, p0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;->selectIndex:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
