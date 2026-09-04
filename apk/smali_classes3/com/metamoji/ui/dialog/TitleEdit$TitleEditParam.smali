.class public Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;
.super Ljava/lang/Object;
.source "TitleEdit.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/dialog/TitleEdit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TitleEditParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public defaultTitle:Ljava/lang/String;

.field public docID:Ljava/lang/String;

.field public driveID:Ljava/lang/String;

.field public isReadFlg:Z

.field public title:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 101
    new-instance v0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 72
    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 76
    new-array v0, v0, [Z

    .line 77
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    const/4 v1, 0x0

    .line 78
    aget-boolean v0, v0, v1

    iput-boolean v0, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    .line 79
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->title:Ljava/lang/String;

    .line 80
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->docID:Ljava/lang/String;

    .line 81
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->driveID:Ljava/lang/String;

    .line 82
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->defaultTitle:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 88
    iget-boolean p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->isReadFlg:Z

    const/4 v0, 0x1

    new-array v0, v0, [Z

    const/4 v1, 0x0

    aput-boolean p2, v0, v1

    .line 89
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 90
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->title:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->docID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->driveID:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 93
    iget-object p2, p0, Lcom/metamoji/ui/dialog/TitleEdit$TitleEditParam;->defaultTitle:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
