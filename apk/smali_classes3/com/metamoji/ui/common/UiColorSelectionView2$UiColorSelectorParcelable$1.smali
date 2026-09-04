.class Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable$1;
.super Ljava/lang/Object;
.source "UiColorSelectionView2.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 2704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;
    .locals 2

    .line 2708
    new-instance v0, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;-><init>(Landroid/os/Parcel;Lcom/metamoji/ui/common/UiColorSelectionView2-IA;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2704
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;
    .locals 0

    .line 2713
    new-array p1, p1, [Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;

    return-object p1
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            null
        }
    .end annotation

    .line 2704
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable$1;->newArray(I)[Lcom/metamoji/ui/common/UiColorSelectionView2$UiColorSelectorParcelable;

    move-result-object p1

    return-object p1
.end method
