.class public Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;
.super Ljava/lang/Object;
.source "UserManagementDialog.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UserManagementDialogParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public address:Ljava/lang/String;

.field public currentRadioId:I

.field public inviteMessage:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 119
    new-instance v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    const-string v0, ""

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    .line 97
    sget v1, Lcom/metamoji/noteanytime/R$id;->history_address_btn:I

    iput v1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->currentRadioId:I

    .line 98
    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->inviteMessage:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 1

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    .line 103
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->currentRadioId:I

    .line 104
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->inviteMessage:Ljava/lang/String;

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

    .line 109
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->address:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 110
    iget p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->currentRadioId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 111
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/management/UserManagementDialog$UserManagementDialogParam;->inviteMessage:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
