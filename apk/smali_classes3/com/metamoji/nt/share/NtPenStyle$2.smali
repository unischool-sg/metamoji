.class Lcom/metamoji/nt/share/NtPenStyle$2;
.super Ljava/lang/Object;
.source "NtPenStyle.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/nt/share/NtPenStyle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/nt/share/NtPenStyle;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/nt/share/NtPenStyle;
    .locals 2

    .line 922
    new-instance v0, Lcom/metamoji/nt/share/NtPenStyle;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/metamoji/nt/share/NtPenStyle;-><init>(Landroid/os/Parcel;Lcom/metamoji/nt/share/NtPenStyle-IA;)V

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

    .line 920
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/share/NtPenStyle$2;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/nt/share/NtPenStyle;
    .locals 0

    .line 926
    new-array p1, p1, [Lcom/metamoji/nt/share/NtPenStyle;

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

    .line 920
    invoke-virtual {p0, p1}, Lcom/metamoji/nt/share/NtPenStyle$2;->newArray(I)[Lcom/metamoji/nt/share/NtPenStyle;

    move-result-object p1

    return-object p1
.end method
