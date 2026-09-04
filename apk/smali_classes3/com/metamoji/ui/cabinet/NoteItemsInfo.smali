.class public Lcom/metamoji/ui/cabinet/NoteItemsInfo;
.super Ljava/lang/Object;
.source "NoteItemsInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/NoteItemsInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _docIds:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field _driveId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteItemsInfo$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteItemsInfo$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 40
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_driveId:Ljava/lang/String;

    .line 41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_docIds:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_driveId:Ljava/lang/String;

    .line 36
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_docIds:Ljava/util/ArrayList;

    const-class v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->readList(Ljava/util/List;Ljava/lang/ClassLoader;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 44
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_driveId:Ljava/lang/String;

    .line 46
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_docIds:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDocIds()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 54
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_docIds:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 19
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_driveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemsInfo;->_docIds:Ljava/util/ArrayList;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeList(Ljava/util/List;)V

    return-void
.end method
