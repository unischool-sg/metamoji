.class Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$1;
.super Ljava/lang/Object;
.source "MMJHandwriteStroke.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 322
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
    .locals 2

    .line 324
    new-instance v0, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;-><init>(Landroid/os/Parcel;Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke-IA;)V

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

    .line 322
    invoke-virtual {p0, p1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$1;->createFromParcel(Landroid/os/Parcel;)Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;
    .locals 0

    .line 328
    new-array p1, p1, [Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

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

    .line 322
    invoke-virtual {p0, p1}, Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke$1;->newArray(I)[Lcom/sevenknowledge/common/stroke/MMJHandwriteStroke;

    move-result-object p1

    return-object p1
.end method
