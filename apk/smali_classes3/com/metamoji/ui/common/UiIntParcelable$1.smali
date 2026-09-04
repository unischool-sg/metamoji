.class Lcom/metamoji/ui/common/UiIntParcelable$1;
.super Ljava/lang/Object;
.source "UiIntParcelable.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/common/UiIntParcelable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/ui/common/UiIntParcelable;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/common/UiIntParcelable;
    .locals 2

    .line 28
    new-instance v0, Lcom/metamoji/ui/common/UiIntParcelable;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/metamoji/ui/common/UiIntParcelable;-><init>(Landroid/os/Parcel;Lcom/metamoji/ui/common/UiIntParcelable-IA;)V

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

    .line 24
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiIntParcelable$1;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/common/UiIntParcelable;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/ui/common/UiIntParcelable;
    .locals 0

    .line 33
    new-array p1, p1, [Lcom/metamoji/ui/common/UiIntParcelable;

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

    .line 24
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/common/UiIntParcelable$1;->newArray(I)[Lcom/metamoji/ui/common/UiIntParcelable;

    move-result-object p1

    return-object p1
.end method
