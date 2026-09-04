.class Lcom/metamoji/ui/cabinet/CabinetTreeItem$1;
.super Ljava/lang/Object;
.source "CabinetTreeItem.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/CabinetTreeItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/ui/cabinet/CabinetTreeItem;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 1

    .line 54
    new-instance v0, Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem;-><init>(Landroid/os/Parcel;)V

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$1;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/ui/cabinet/CabinetTreeItem;
    .locals 0

    .line 58
    new-array p1, p1, [Lcom/metamoji/ui/cabinet/CabinetTreeItem;

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

    .line 51
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/cabinet/CabinetTreeItem$1;->newArray(I)[Lcom/metamoji/ui/cabinet/CabinetTreeItem;

    move-result-object p1

    return-object p1
.end method
