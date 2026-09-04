.class public Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;
.super Ljava/lang/Object;
.source "RequiredEula.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/cabinet/user/RequiredEula;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RequiredEulaParam"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    new-instance v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam$1;

    invoke-direct {v0}, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam$1;-><init>()V

    sput-object v0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    invoke-virtual {p1}, Landroid/os/Parcel;->readSerializable()Ljava/io/Serializable;

    move-result-object p1

    check-cast p1, Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    iput-object p1, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;->callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

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

    .line 54
    iget-object p2, p0, Lcom/metamoji/ui/cabinet/user/RequiredEula$RequiredEulaParam;->callback:Lcom/metamoji/cs/dc/CsShowRequiredEULADialogCallback;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
