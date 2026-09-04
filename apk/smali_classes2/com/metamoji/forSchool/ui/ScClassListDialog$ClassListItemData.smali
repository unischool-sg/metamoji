.class Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;
.super Ljava/lang/Object;
.source "ScClassListDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/forSchool/ui/ScClassListDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ClassListItemData"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public className:Ljava/lang/String;

.field public groupDicList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public isManageMode:Z

.field public selected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 160
    new-instance v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData$1;

    invoke-direct {v0}, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData$1;-><init>()V

    sput-object v0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method protected constructor <init>(Landroid/os/Parcel;)V
    .locals 3

    .line 139
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 140
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    .line 141
    invoke-virtual {p1}, Landroid/os/Parcel;->readByte()B

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->isManageMode:Z

    .line 142
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    const/4 v0, 0x0

    .line 143
    iput-object v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    .line 144
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    if-lez v0, :cond_2

    .line 148
    :try_start_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    .line 149
    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0, p1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    .line 150
    invoke-static {v0}, Lcom/metamoji/cm/CmJson;->jsonValueToObject(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    iput-object p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 152
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method public constructor <init>(ZLjava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 126
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 127
    iput-boolean v0, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    .line 128
    iput-boolean p1, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->isManageMode:Z

    .line 129
    iput-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    .line 130
    iput-object p3, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

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

    .line 185
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->selected:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 186
    iget-boolean p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->isManageMode:Z

    int-to-byte p2, p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeByte(B)V

    .line 187
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->className:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 188
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 189
    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    if-lez p2, :cond_1

    .line 193
    :try_start_0
    iget-object p2, p0, Lcom/metamoji/forSchool/ui/ScClassListDialog$ClassListItemData;->groupDicList:Ljava/util/List;

    invoke-static {p2}, Lcom/metamoji/cm/CmJson;->createJsonValue(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    .line 194
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 195
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception p1

    .line 197
    invoke-static {p1}, Lcom/metamoji/cm/CmLog;->error(Ljava/lang/Throwable;)V

    :cond_1
    return-void
.end method
