.class public Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;
.super Ljava/lang/Object;
.source "OldLoginPageActivity.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LoginPageParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 235
    new-instance v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 216
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 219
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 221
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;->callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

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

    .line 227
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/OldLoginPageActivity$LoginPageParam;->callback:Lcom/metamoji/cs/dc/CsShowLoginDialogCallback;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
