.class public Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;
.super Ljava/lang/Object;
.source "EntryUser.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/EntryUser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EntryUserParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    new-instance v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;->callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

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

    .line 66
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/EntryUser$EntryUserParam;->callback:Lcom/metamoji/cs/dc/CsShowRegisterDialogCallback;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
