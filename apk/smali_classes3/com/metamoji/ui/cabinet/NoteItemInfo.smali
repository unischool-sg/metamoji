.class public Lcom/metamoji/ui/cabinet/NoteItemInfo;
.super Ljava/lang/Object;
.source "NoteItemInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/NoteItemInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field _docId:Ljava/lang/String;

.field _docTitle:Ljava/lang/String;

.field _driveId:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 22
    new-instance v0, Lcom/metamoji/ui/cabinet/NoteItemInfo$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/NoteItemInfo$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 41
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_driveId:Ljava/lang/String;

    .line 42
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docId:Ljava/lang/String;

    .line 43
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_driveId:Ljava/lang/String;

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docId:Ljava/lang/String;

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docTitle:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    iput-object p1, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_driveId:Ljava/lang/String;

    .line 48
    iput-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docId:Ljava/lang/String;

    .line 49
    iput-object p3, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getDocId()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docId:Ljava/lang/String;

    return-object v0
.end method

.method public getDocTitle()Ljava/lang/String;
    .locals 1

    .line 61
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docTitle:Ljava/lang/String;

    return-object v0
.end method

.method public getDriveId()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_driveId:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 18
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_driveId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 19
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 20
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/NoteItemInfo;->_docTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
