.class Lcom/metamoji/ui/UiPaperSettingsParam$1;
.super Ljava/lang/Object;
.source "UiPaperSettingsParam.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/metamoji/ui/UiPaperSettingsParam;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/metamoji/ui/UiPaperSettingsParam;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/UiPaperSettingsParam;
    .locals 1

    .line 105
    new-instance v0, Lcom/metamoji/ui/UiPaperSettingsParam;

    invoke-direct {v0, p1}, Lcom/metamoji/ui/UiPaperSettingsParam;-><init>(Landroid/os/Parcel;)V

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

    .line 103
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiPaperSettingsParam$1;->createFromParcel(Landroid/os/Parcel;)Lcom/metamoji/ui/UiPaperSettingsParam;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/metamoji/ui/UiPaperSettingsParam;
    .locals 0

    .line 109
    new-array p1, p1, [Lcom/metamoji/ui/UiPaperSettingsParam;

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

    .line 103
    invoke-virtual {p0, p1}, Lcom/metamoji/ui/UiPaperSettingsParam$1;->newArray(I)[Lcom/metamoji/ui/UiPaperSettingsParam;

    move-result-object p1

    return-object p1
.end method
