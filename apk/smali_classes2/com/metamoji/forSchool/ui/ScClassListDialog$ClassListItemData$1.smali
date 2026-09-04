.class Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData$1;
.super Ljava/lang/Object;
.source "ScClassListDialog.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;
    .locals 1

    .line 163
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    invoke-direct {v0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;-><init>(Landroid/os/Parcel;)V

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

    .line 160
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData$1;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;
    .locals 0

    .line 168
    new-array p1, p1, [Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

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

    .line 160
    invoke-virtual {p0, p1}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData$1;->newArray(I)[Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;

    move-result-object p1

    return-object p1
.end method
